function decode(lzma, memory, inputData, rawData) {
  const inputDataPtr = lzma.newU8Array(inputData.length)
  console.log('inputDataPtr:', inputDataPtr)
  const u8Array = new Uint8Array(memory.buffer, inputDataPtr + 8, inputData.length)
  
  u8Array.set(inputData)
  // copyData(u8Array, inputData)

  const unpackSize = lzma.unpackSize(inputDataPtr)
  console.log('unpackSize:', unpackSize)
  const decodedDataPtr = lzma.decode(inputDataPtr)
  const decodedData = new Uint8Array(memory.buffer, decodedDataPtr, unpackSize)
  console.log('decodedDataPtr:', decodedDataPtr)
  verify(decodedData, rawData)
}

const msg =
  'Verification failed, decoded data does not matched with expected data'

function verify(data, expected) {
  if (data.length !== expected.length) {
    throw msg
  }
  for (let i = 0; i < expected.length; i++) {
    if (data[i] !== expected[i]) {
      throw msg
    }
  }
  return true
}

function copyData(target, source, offset = 0) {
  let j = 0
  for (let i = offset; i < offset + source.length; i++) {
    target[i] = source[j++]
  }
}

var module =  {
  exports:decode
}
