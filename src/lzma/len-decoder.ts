import { BitTreeDecoder } from './bit-tree-decoder'
import { LZMA } from './lzma'
import { RangeDecoder } from './range-decoder'

/**
 * LZMA Decoder
 * @author Nidin Vinayakan
 */

export class LenDecoder {
    private choice: i32
    private lowCoder: Array<BitTreeDecoder> //3
    private midCoder: Array<BitTreeDecoder> //3
    private highCoder: BitTreeDecoder //8

    constructor() {
        this.lowCoder = BitTreeDecoder.constructArray(3, 1 << LZMA.kNumPosBitsMax)
        this.midCoder = BitTreeDecoder.constructArray(3, 1 << LZMA.kNumPosBitsMax)
        this.highCoder = new BitTreeDecoder(8)
    }

    public init(): void {
        this.choice = [LZMA.PROB_INIT_VAL, LZMA.PROB_INIT_VAL]
        this.highCoder.init()
        for (var i: i32 = 0; i < 1 << LZMA.kNumPosBitsMax; i++) {
            this.lowCoder[i].init()
            this.midCoder[i].init()
        }
    }
    public decode(rc: RangeDecoder, posState: i32): i32 {
        if (rc.decodeBit(this.choice, 0) == 0) {
            return this.lowCoder[posState].decode(rc)
        }
        if (rc.decodeBit(this.choice, 1) == 0) {
            return 8 + this.midCoder[posState].decode(rc)
        }
        return 16 + this.highCoder.decode(rc)
    }
}
