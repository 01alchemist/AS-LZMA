import { RangeDecoder } from './range-decoder';
import { OutWindow } from './out-window';
import { BitTreeDecoder } from './bit-tree-decoder';
import { LenDecoder } from './len-decoder';
import { LZMA } from './lzma';

/**
 * LZMA Decoder
 * @author Nidin Vinayakan
 */

export class LzmaDecoder {
    //Public
    public markerIsMandatory: boolean
    public rangeDec: RangeDecoder //RangeDecoder
    public outWindow: OutWindow //OutWindow
    public lc: i32
    public pb: i32
    public lp: u8 //unsigned byte
    public dictSize: u32 //UInt32
    public dictSizeInProperties: u8 //UInt32

    //Private
    private litProbs: u16[]

    private posSlotDecoder: Array<BitTreeDecoder>
    private alignDecoder: BitTreeDecoder
    private posDecoders: u16[]

    private isMatch: u16[]
    private isRep: u16[]
    private isRepG0: u16[]
    private isRepG1: u16[]
    private isRepG2: u16[]
    private isRep0Long: u16[]

    private lenDecoder: LenDecoder
    private repLenDecoder: LenDecoder

    //Local registers
    private loc1: i32
    private loc2: i32
    private matchBitI: i32
    private matchByteI: i32
    private bitI: i32
    private symbolI: i32
    private prevByteI: i32
    private litStateI: i32

    constructor() {
        this.posSlotDecoder = BitTreeDecoder.constructArray(6, LZMA.kNumLenToPosStates) //6
        this.alignDecoder = new BitTreeDecoder(LZMA.kNumAlignBits)
        this.posDecoders = new Array<u16>(1 + LZMA.kNumFullDistances - LZMA.kEndPosModelIndex)

        this.isMatch = new Array<u16>(LZMA.kNumStates << LZMA.kNumPosBitsMax)
        this.isRep = new Array<u16>(LZMA.kNumStates)
        this.isRepG0 = new Array<u16>(LZMA.kNumStates)
        this.isRepG1 = new Array<u16>(LZMA.kNumStates)
        this.isRepG2 = new Array<u16>(LZMA.kNumStates)
        this.isRep0Long = new Array<u16>(LZMA.kNumStates << LZMA.kNumPosBitsMax)

        this.lenDecoder = new LenDecoder()
        this.repLenDecoder = new LenDecoder()
        this.rangeDec = new RangeDecoder()
        this.outWindow = new OutWindow()
    }

    public init(): void {

        this.initLiterals()
        this.initDist()

        LZMA.INIT_PROBS(this.isMatch)
        LZMA.INIT_PROBS(this.isRep)
        LZMA.INIT_PROBS(this.isRepG0)
        LZMA.INIT_PROBS(this.isRepG1)
        LZMA.INIT_PROBS(this.isRepG2)
        LZMA.INIT_PROBS(this.isRep0Long)

        this.lenDecoder.init()
        this.repLenDecoder.init()
    }
    public create(): void {
        this.outWindow.create(this.dictSize)
        this.createLiterals()
    }
    //Private
    private createLiterals(): void {
        this.litProbs = new Array<u16>(0x300 << (this.lc + this.lp))
    }
    private initLiterals(): void {
        var num: i32 = 0x300 << (this.lc + this.lp) //UInt32
        for (var i: i32 = 0; i < num; i++) {
            this.litProbs[i] = LZMA.PROB_INIT_VAL
        }
    }
    private decodeLiteral(state:u8, rep0:u32): void {
        //unsigned , UInt32
        this.prevByteI = 0 //unsigned byte
        if (!this.outWindow.isEmpty()) this.prevByteI = this.outWindow.getByte(1)

        this.symbolI = 1
        this.litStateI =
            ((this.outWindow.totalPos & ((1 << this.lp) - 1)) << this.lc) +
            (this.prevByteI >>> (8 - this.lc))
        var probsOffset: i32 = (0x300 * this.litStateI) | 0

        if (state >= 7) {
            this.matchByteI = this.outWindow.getByte(rep0 + 1)
            do {
                this.matchBitI = (this.matchByteI >>> 7) & 1
                this.matchByteI <<= 1
                this.bitI = this.rangeDec.decodeBit(
                    this.litProbs,
                    probsOffset + ((1 + this.matchBitI) << 8) + this.symbolI,
                )
                this.symbolI = (this.symbolI << 1) | this.bitI
                if (this.matchBitI != this.bitI) break
            } while (this.symbolI < 0x100)
        }
        while (this.symbolI < 0x100) {
            this.symbolI =
                (this.symbolI << 1) |
                this.rangeDec.decodeBit(this.litProbs, probsOffset + this.symbolI)
        }
        this.outWindow.putByte(this.symbolI - 0x100)
    }

    private decodeDistance(len: i32): i32 {
        //unsigned byte
        var lenState: i32 = len //unsigned byte
        if (lenState > LZMA.kNumLenToPosStates - 1) lenState = LZMA.kNumLenToPosStates - 1

        var posSlot = this.posSlotDecoder[lenState].decode(this.rangeDec) //unsigned byte
        if (posSlot < 4) return posSlot

        var numDirectBits = (posSlot >>> 1) - 1 //unsigned byte
        this.loc1 = (2 | (posSlot & 1)) << numDirectBits //UInt32
        if (posSlot < LZMA.kEndPosModelIndex) {
            this.loc1 += LZMA.BitTreeReverseDecode(
                this.posDecoders,
                numDirectBits,
                this.rangeDec,
                this.loc1 - posSlot,
            )
        } else {
            this.loc1 +=
                this.rangeDec.decodeDirectBits(numDirectBits - LZMA.kNumAlignBits) << LZMA.kNumAlignBits
            this.loc1 += this.alignDecoder.reverseDecode(this.rangeDec)
        }
        return this.loc1
    }
    private initDist(): void {
        for (var i = 0; i < LZMA.kNumLenToPosStates; i++) {
            this.posSlotDecoder[i].init()
        }
        this.alignDecoder.init()
        LZMA.INIT_PROBS(this.posDecoders)
    }
    public decodeProperties(properties: Uint8Array): void {
        var prop = new Uint8Array(4)
        prop[0] = properties[0]
        if (prop[0] >= 9 * 5 * 5) {
            throw 'Incorrect LZMA properties'
        }
        prop[1] = prop[0] % 9
        prop[0] /= 9
        prop[2] = prop[0] / 5
        prop[3] = prop[0] % 5

        this.lc = prop[1]
        this.pb = prop[2]
        this.lp = prop[3]

        this.dictSizeInProperties = 0
        for (var i: u8 = 0; i < 4; i++) {
            this.dictSizeInProperties |= properties[i + 1] << (8 * i)
        }

        this.dictSize = this.dictSizeInProperties

        if (this.dictSize < LZMA.LZMA_DIC_MIN) {
            this.dictSize = LZMA.LZMA_DIC_MIN
        }
    }
    private updateState_Literal(state: u8): u8 {
        if (state < 4) return 0
        else if (state < 10) return state - 3
        else return state - 6
    }
    private updateState_ShortRep(state: u8): u8 {
        return state < 7 ? 9 : 11
    }
    private updateState_Rep(state: u8): u8 {
        return state < 7 ? 8 : 11
    }
    private updateState_Match(state: u8): u8 {
        return state < 7 ? 7 : 10
    }

    public decode(unpackSizeDefined: boolean, unpackSize: i32): i32 {
        //UInt64
        this.init()
        this.rangeDec.init()

        if (unpackSizeDefined) {
            this.outWindow.outStream = new Uint8Array(unpackSize)
        }

        var rep0:u32 = 0,
            rep1:u32 = 0,
            rep2:u32 = 0,
            rep3:u32 = 0 //UInt32
        var state:u8 = 0 //unsigned byte

        for (;;) {
            if (unpackSizeDefined && unpackSize == 0 && !this.markerIsMandatory) {
                if (this.rangeDec.isFinishedOK()) {
                    return LZMA.LZMA_RES_FINISHED_WITHOUT_MARKER
                }
            }

            var posState = this.outWindow.totalPos & ((1 << this.pb) - 1)

            if (this.rangeDec.decodeBit(this.isMatch, (state << LZMA.kNumPosBitsMax) + posState) == 0) {
                if (unpackSizeDefined && unpackSize == 0) {
                    return LZMA.LZMA_RES_ERROR
                }
                this.decodeLiteral(state, rep0)
                state = this.updateState_Literal(state)
                unpackSize--
                continue
            }

            var len: i32

            if (this.rangeDec.decodeBit(this.isRep, state) != 0) {
                if (unpackSizeDefined && unpackSize == 0) {
                    return LZMA.LZMA_RES_ERROR
                }
                if (this.outWindow.isEmpty()) {
                    return LZMA.LZMA_RES_ERROR
                }
                if (this.rangeDec.decodeBit(this.isRepG0, state) == 0) {
                    if (this.rangeDec.decodeBit(this.isRep0Long, (state << LZMA.kNumPosBitsMax) + posState) == 0) {
                        state = this.updateState_ShortRep(state)
                        this.outWindow.putByte(this.outWindow.getByte(rep0 + 1))
                        unpackSize--
                        continue
                    }
                } else {
                    var dist: i32
                    if (this.rangeDec.decodeBit(this.isRepG1, state) == 0) {
                        dist = rep1
                    } else {
                        if (this.rangeDec.decodeBit(this.isRepG2, state) == 0) {
                            dist = rep2
                        } else {
                            dist = rep3
                            rep3 = rep2
                        }
                        rep2 = rep1
                    }
                    rep1 = rep0
                    rep0 = dist
                }
                len = this.repLenDecoder.decode(this.rangeDec, posState)
                state = this.updateState_Rep(state)
            } else {
                rep3 = rep2
                rep2 = rep1
                rep1 = rep0
                len = this.lenDecoder.decode(this.rangeDec, posState)
                state = this.updateState_Match(state)
                rep0 = this.decodeDistance(len)
                if (rep0 == 0xffffffff) {
                    return this.rangeDec.isFinishedOK() ? LZMA.LZMA_RES_FINISHED_WITH_MARKER : LZMA.LZMA_RES_ERROR
                }

                if (unpackSizeDefined && unpackSize == 0) {
                    return LZMA.LZMA_RES_ERROR
                }
                if (rep0 >= this.dictSize || !this.outWindow.checkDistance(rep0)) {
                    return LZMA.LZMA_RES_ERROR
                }
            }
            len += LZMA.kMatchMinLen
            var isError: boolean = false
            if (unpackSizeDefined && unpackSize < len) {
                len = unpackSize
                isError = true
            }
            this.outWindow.copyMatch(rep0 + 1, len)
            unpackSize -= len
            if (isError) {
                return LZMA.LZMA_RES_ERROR
            }
        }
        return 0;
    }
}
