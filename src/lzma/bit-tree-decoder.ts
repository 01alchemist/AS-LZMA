import { RangeDecoder } from './range-decoder';
import { LZMA } from './lzma';

/**
 * LZMA Decoder
 * @author Nidin Vinayakan
 */
export class BitTreeDecoder {
    public probs: u16[]
    private numBits: i32

    constructor(numBits:i32) {
        this.numBits = numBits
        this.probs = new Array<u16>(1 << this.numBits)
    }
    public init(): void {
        LZMA.INIT_PROBS(this.probs)
    }
    public decode(rc: RangeDecoder): i32 {
        var m: i32 = 1 //Uint16
        for (var i: i32 = 0; i < this.numBits; i++) m = (m << 1) + rc.decodeBit(this.probs, m)
        return m - (1 << this.numBits)
    }
    public reverseDecode(rc: RangeDecoder): i32 {
        return LZMA.BitTreeReverseDecode(this.probs, this.numBits, rc)
    }
    static constructArray(numBits: i32, len: i32): Array<BitTreeDecoder> {
        var vec: BitTreeDecoder[] = new Array<BitTreeDecoder>(len)
        for (var i: i32 = 0; i < len; i++) {
            vec[i] = new BitTreeDecoder(numBits)
        }
        return vec
    }
}
