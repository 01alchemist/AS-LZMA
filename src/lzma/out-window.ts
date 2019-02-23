/**
 * LZMA Decoder
 * @author Nidin Vinayakan
 */

export class OutWindow {
    public totalPos: i32
    public outStream: Uint8Array

    private buf: Uint8Array
    private pos: i32
    public out_pos: i32
    private size: i32
    private isFull: boolean

    constructor() {
        this.out_pos = 0
    }
    public create(
        dictSize: i32, //UInt32
    ): void {
        this.buf = new Uint8Array(dictSize)
        this.pos = 0
        this.size = dictSize
        this.isFull = false
        this.totalPos = 0
    }

    public putByte(b: i32): void {
        this.totalPos++
        this.buf[this.pos++] = b
        if (this.pos == this.size) {
            this.pos = 0
            this.isFull = true
        }
        this.outStream[this.out_pos++] = b
    }

    public getByte(
        dist: i32, //UInt32
    ): i32 {
        return this.buf[dist <= this.pos ? this.pos - dist : this.size - dist + this.pos]
    }

    public copyMatch(
        dist: i32,
        len:i32, //UInt32 ,unsigned byte
    ): void {
        for (; len > 0; len--) {
            this.putByte(this.getByte(dist))
        }
    }

    public checkDistance(dist: i32): boolean {
        //UInt32
        return dist <= this.pos || this.isFull
    }

    public isEmpty(): boolean {
        return this.pos == 0 && !this.isFull
    }
}
