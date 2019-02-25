const AS_ARRAY_OFFSET = 24

class DecodeResult {
  constructor(ptr, memory) {
    const result = new Uint32Array(memory.buffer, ptr, 4)
    const [success, error, unpackSize, dataPtr] = result;
    this.success = success
    this.error = error
    if (this.success) {
      this.unpackSize = unpackSize
      this.data = new Uint8Array(
        memory.buffer,
        dataPtr + AS_ARRAY_OFFSET,
        unpackSize
      )
    }
  }
}

function decode(lzma, memory, inputData, rawData) {
  const inputDataPtr = lzma.newU8Array(inputData.length)
  // console.log('inputDataPtr:', inputDataPtr)
  const u8Array = new Uint8Array(
    memory.buffer,
    inputDataPtr + AS_ARRAY_OFFSET,
    inputData.length
  )

  u8Array.set(inputData)

  const _unpackSize = lzma.unpackSize(inputDataPtr)
  console.log('unpackSize:', _unpackSize)

  const t1 = performance.now()
  const resultPtr = lzma.decode(inputDataPtr)
  const t2 = performance.now()
  console.log(`[AS] Decode time: ${(t2 - t1).toFixed(2)}ms`)
  const result = new DecodeResult(resultPtr, memory)
  if (result.success) {
    const decodedData = result.data
    verify(decodedData, rawData)
  } else {
    console.log('Decode failed ', result)
  }
  // const decoder = new TextDecoder()
  // const text = decoder.decode(decodedData)
  // console.log(text)
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

var module = {
  exports: decode,
}
