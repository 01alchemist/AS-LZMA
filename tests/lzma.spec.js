const fs = require('fs')
const path = require('path')
const { DecodeResult, AS_ARRAY_OFFSET } = require('./utils')

describe('optimized.wasm Tests', () => {
  const memory = new WebAssembly.Memory({ initial: 1024 })
  let lzma

  beforeAll(async () => {
    const wasmPath = path.resolve(__dirname, '../build', 'optimized.wasm')
    const buffer = fs.readFileSync(wasmPath)
    const results = await WebAssembly.instantiate(buffer, {
      env: {
        memory,
        abort: (filename, line, column) => {
          throw Error(
            `abort called at ${
              filename ? filename + ':' : ''
            }${line}:${column}`,
          )
        },
      },
    })
    lzma = results.instance.exports
  })

  test('Simple text decode', () => {
    const uncompressedData = new Uint8Array(
      fs.readFileSync(path.resolve(__dirname, './resources/test.txt')),
    )
    const compressedData = new Uint8Array(
      fs.readFileSync(path.resolve(__dirname, './resources/test.lzma')),
    )

    const compressedDataPtr = lzma.newU8Array(compressedData.length)
    const u8Array = new Uint8Array(
      memory.buffer,
      compressedDataPtr + AS_ARRAY_OFFSET,
      compressedData.length,
    )

    u8Array.set(compressedData)

    const resultPtr = lzma.decode(compressedDataPtr)
    const result = new DecodeResult(resultPtr, memory)
    expect(result.data).toEqual(uncompressedData)
  })
})
