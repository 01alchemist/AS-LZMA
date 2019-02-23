import "allocator/arena";
import { LzmaDecoder } from './lzma-decoder'
import { RangeDecoder } from './range-decoder'
'use strict'
/**
 * LZMA Decoder
 * @author Nidin Vinayakan
 */

export class LZMA {
    static LZMA_DIC_MIN: u32 = 1 << 12
    static LZMA_RES_ERROR: u32 = 0
    static LZMA_RES_FINISHED_WITH_MARKER: u32 = 1
    static LZMA_RES_FINISHED_WITHOUT_MARKER: u32 = 2
    static kNumBitModelTotalBits: u16 = 11
    static kNumMoveBits: u8 = 5
    static PROB_INIT_VAL: u16 = (1 << LZMA.kNumBitModelTotalBits) / 2 //1024
    static kNumPosBitsMax: u8 = 4

    static kNumStates: i32 = 12
    static kNumLenToPosStates: i32 = 4
    static kNumAlignBits: i32 = 4
    static kStartPosModelIndex: i32 = 4
    static kEndPosModelIndex: i32 = 14
    static kNumFullDistances: i32 = 1 << (LZMA.kEndPosModelIndex >>> 1)
    static kMatchMinLen: i32 = 2

    public decoder: LzmaDecoder
    public data: Uint8Array

    static INIT_PROBS(p: u16[]): void {
        for (var i: i32 = 0; i < p.length; i++) {
            p[i] = this.PROB_INIT_VAL
        }
    }
    static BitTreeReverseDecode(probs: u16[], numBits: i32, rc: RangeDecoder, offset: i32 = 0): i32 {
        var m: i32 = 1
        var symbol: i32 = 0
        for (var i: i32 = 0; i < numBits; i++) {
            var bit: i32 = rc.decodeBit(probs, offset + m)
            m <<= 1
            m += bit
            symbol |= bit << i
        }
        return symbol
    }
    constructor() {
        this.decoder = new LzmaDecoder()
    }
    public unpackSize(data: Uint8Array): i32 {
        var header: Uint8Array = new Uint8Array(13)
        var i: i32 //int
        for (i = 0; i < 13; i++) {
            header[i] = data[i]
        }

        var unpackSize: i32 = 0 //UInt64
        var unpackSizeDefined: boolean = false
        for (i = 0; i < 8; i++) {
            var b: i32 = header[5 + i]
            if (b != 0xff) {
                unpackSizeDefined = true
            }
            unpackSize |= b << (8 * i)
        }
        return unpackSize
    }
    public decode(data: Uint8Array): Uint8Array {
        this.data = data
        //var header:Uint8Array = data.readUint8Array(13);
        var header: Uint8Array = new Uint8Array(13)
        var i: i32 //int
        for (i = 0; i < 13; i++) {
            header[i] = data[i]
        }

        this.decoder.decodeProperties(header)

        //console.log("lc="+this.decoder.lc+", lp="+this.decoder.lp+", pb="+this.decoder.pb);
        //console.log("Dictionary Size in properties = "+this.decoder.dictSizeInProperties);
        //console.log("Dictionary Size for decoding  = "+this.decoder.dictSize);
        //return this.ucdata;
        var unpackSize: i32 = 0 //UInt64
        var unpackSizeDefined: boolean = false
        for (i = 0; i < 8; i++) {
            var b: i32 = header[5 + i]
            if (b != 0xff) {
                unpackSizeDefined = true
            }
            unpackSize |= b << (8 * i)
        }

        this.decoder.markerIsMandatory = !unpackSizeDefined

        /*if (unpackSizeDefined){
                console.log("Uncompressed Size : "+ unpackSize +" bytes");
            }else{
                console.log("End marker is expected");
            }*/
        this.decoder.rangeDec.inStream = data
        this.decoder.create()
        // we support the streams that have uncompressed size and marker.
        var res: i32 = this.decoder.decode(unpackSizeDefined, unpackSize) //int

        //console.log("Read    ", this.decoder.rangeDec.in_pos);
        //console.log("Written ", this.decoder.outWindow.out_pos);

        if (res == LZMA.LZMA_RES_ERROR) {
            throw 'LZMA decoding error'
        } else if (res == LZMA.LZMA_RES_FINISHED_WITHOUT_MARKER) {
            //console.log("Finished without end marker");
        } else if (res == LZMA.LZMA_RES_FINISHED_WITH_MARKER) {
            if (unpackSizeDefined) {
                if (this.decoder.outWindow.out_pos != unpackSize) {
                    throw 'Finished with end marker before than specified size'
                }
                //console.log("Warning: ");
            }
            //console.log("Finished with end marker");
        } else {
            throw 'Internal Error'
        }

        if (this.decoder.rangeDec.corrupted) {
            // console.log('Warning: LZMA stream is corrupted')
        }
        return this.decoder.outWindow.outStream
    }
}
