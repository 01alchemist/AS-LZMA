import { LZMA, DecodeResult } from './lzma/lzma'

var lzma = new LZMA()

export function reset(): void {
  memory.reset()
  lzma = new LZMA()
}
export function newU8Array(len: i32): Uint8Array {
  return new Uint8Array(len)
}

export function unpackSize(data: Uint8Array): u32 {
  return lzma.unpackSize(data)
}

export function decode(data: Uint8Array): DecodeResult {
  return lzma.decode(data)
}
