import { LZMA } from './lzma/lzma'

var lzma = new LZMA()

export function newU8Array(len: i32): Uint8Array {
  return new Uint8Array(len)
}
export function unpackSize(data: Uint8Array): i32 {
  return lzma.unpackSize(data)
}
export function decode(data: Uint8Array): Uint8Array {
  return lzma.decode(data)
}
