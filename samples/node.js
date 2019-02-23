const fs = require('fs')
const path = require('path')
const decode = require('decode')

const rawData = new Uint8Array(
  fs.readFileSync(path.resolve(__dirname, 'zygote_male_w_repro.obj')),
)
const lzmaCompressedData = new Uint8Array(
  fs.readFileSync(path.resolve(__dirname, 'zygote_male_w_repro.lzma')),
)

const compiled = new WebAssembly.Module(
  fs.readFileSync(path.resolve(__dirname, '..', 'build', 'optimized.wasm')),
)
const memory = new WebAssembly.Memory({ initial: 10 })
const imports = {
  env: {
    memory,
    abort: (filename, line, column) => {
      throw Error(
        `abort called at ${filename ? filename + ':' : ''}${line}:${column}`,
      )
    },
  },
}

const u8Memory = new Uint8Array(memory.buffer)
const lzma = new WebAssembly.Instance(compiled, imports).exports

decode(lzma, u8Memory, lzmaCompressedData, rawData)
