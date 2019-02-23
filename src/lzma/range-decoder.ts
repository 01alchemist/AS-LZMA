/**
 * LZMA Decoder
 * @author Nidin Vinayakan
 */
export class RangeDecoder {
    static kTopValue: u32 = 1 << 24

    public inStream: Uint8Array
    public corrupted: boolean

    public in_pos: i32
    private range: i32 //UInt32
    private code: i32 //UInt32
    private rangeI: i32 = 0
    private codeI: i32 = 1
    private loc1: i32 = 2
    private loc2: i32 = 3
    private U32: Uint32Array
    private U16: u16[]

    constructor() {
        this.in_pos = 13
    }
    public isFinishedOK(): boolean {
        return this.U32[this.codeI] == 0
    }
    public init(): void {
        this.U32 = new Uint32Array(4)
        this.U16 = new Array<u16>(4)
        this.corrupted = false

        if (this.inStream[this.in_pos++] != 0) {
            this.corrupted = true
        }

        this.U32[this.rangeI] = 0xffffffff
        this.U32[this.codeI] = 0

        for (var i: i32 = 0; i < 4; i++) {
            this.U32[this.codeI] = (this.U32[this.codeI] << 8) | this.inStream[this.in_pos++]
        }

        if (this.U32[this.codeI] == this.U32[this.rangeI]) {
            this.corrupted = true
        }
    }

    public normalize():void {
        if (this.U32[this.rangeI] < RangeDecoder.kTopValue) {
            this.U32[this.rangeI] <<= 8
            this.U32[this.codeI] = (this.U32[this.codeI] << 8) | this.inStream[this.in_pos++]
        }
    }

    public decodeDirectBits(numBits: i32): i32 {
        this.U32[this.loc1] = 0 //UInt32
        do {
            this.U32[this.rangeI] >>>= 1
            this.U32[this.codeI] -= this.U32[this.rangeI]
            this.U32[this.loc2] = 0 - (this.U32[this.codeI] >>> 31)
            this.U32[this.codeI] += this.U32[this.rangeI] & this.U32[this.loc2]

            if (this.U32[this.codeI] == this.U32[this.rangeI]) {
                this.corrupted = true
            }

            this.normalize()
            this.U32[this.loc1] <<= 1
            this.U32[this.loc1] += this.U32[this.loc2] + 1
        } while (--numBits)
        return this.U32[this.loc1]
    }

    public decodeBit(prob: u16[], index: i32): i32 {
        this.U16[0] = prob[index]
        //bound
        this.U32[2] = (this.U32[0] >>> 11) * this.U16[0]
        //var symbol:i32;
        if (this.U32[1] < this.U32[2]) {
            this.U16[0] += ((1 << 11) - this.U16[0]) >>> 5
            this.U32[0] = this.U32[2]
            this.U16[1] = 0
        } else {
            //v -= v >>> LZMA.kNumMoveBits;
            this.U16[0] -= this.U16[0] >>> 5
            this.U32[1] -= this.U32[2]
            this.U32[0] -= this.U32[2]
            this.U16[1] = 1
        }
        prob[index] = this.U16[0]
        //this.normalize();
        if (this.U32[0] < 16777216) {
            this.U32[0] <<= 8
            this.U32[1] = (this.U32[1] << 8) | this.inStream[this.in_pos++]
        }
        return this.U16[1]
    }
}
