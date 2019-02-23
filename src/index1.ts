import 'allocator/arena'

declare function logi(arg: i32): void;

export function newU8Array(len: i32): Uint8Array {
  logi(len)
  return new Uint8Array(len)
}
export function unpackSize(dataPtr: usize): i32 {
  var data = <Uint8Array>dataPtr
  var header: Uint8Array = new Uint8Array(13)
  logi(dataPtr)
  logi(<usize>header)
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
export function decode(u8Array: Uint8Array): Uint8Array {
  return u8Array
}
