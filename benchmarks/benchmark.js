const fs = require('fs')
const path = require('path')
const { spawn, spawnSync } = require('child_process')
const Benchmark = require('benchmark')
const { DecodeResult, AS_ARRAY_OFFSET } = require('../tests/utils')

const testFiles = [
  path.resolve(__dirname, '../resources/test.lzma'),
  path.resolve(__dirname, '../resources/zygote_male_w_repro.lzma'),
  path.resolve(__dirname, '../resources/iron-man.obj.lzma'),
]
const memory = new WebAssembly.Memory({ initial: 1024 })
let lzma
const performance = Date
async function initLZMA() {
  const wasmPath = path.resolve(__dirname, '../build', 'untouched.wasm')
  const buffer = fs.readFileSync(wasmPath)
  const results = await WebAssembly.instantiate(buffer, {
    env: {
      memory,
      abort: (filename, line, column) => {
        throw Error(
          `abort called at ${filename ? filename + ':' : ''}${line}:${column}`
        )
      },
    },
  })
  return results.instance.exports
}

const filename = file => file.substring(file.lastIndexOf('/') + 1)

async function wasmDecode(file) {
  console.time(`AS.decode [${filename(file)}]`)
  const inputData = new Uint8Array(fs.readFileSync(file))
  const inputDataPtr = lzma.newU8Array(inputData.length)
  const u8Array = new Uint8Array(
    memory.buffer,
    inputDataPtr + AS_ARRAY_OFFSET,
    inputData.length
  )
  u8Array.set(inputData)
  const resultPtr = lzma.decode(inputDataPtr)
  console.timeEnd(`AS.decode [${filename(file)}]`)
  lzma.reset()
}

function nativeDecode(file) {
  console.time(`Native.decode [${filename(file)}]`)
  const instance = spawnSync('lzma', ['-k', '-c', file], {
    shell: true,
  })
  console.timeEnd(`Native.decode [${filename(file)}]`)
}

const suite = new Benchmark.Suite()

async function run(file) {
  // try {
  //   await wasmDecode(file)
  // } catch (e) {
  //   console.error(e)
  // }
  // try {
  //   await nativeDecode(file)
  // } catch (e) {
  //   console.error(e)
  // }
  suite
    .add('LZMA Decode::AS', function() {
      try {
        wasmDecode(file)
      } catch (e) {
        console.error(e)
      }
    })
    .add('LZMA Decode::Native', function() {
      try {
        nativeDecode(file)
      } catch (e) {
        console.error(e)
      }
    })
    .on('cycle', function(event) {
      console.log(String(event.target))
    })
    .on('complete', function() {
      console.log('Fastest is ' + this.filter('fastest').map('name'))
    })
    .run({ async: false })
}

async function init() {
  lzma = await initLZMA()
}

init().then(() => {
  // run(testFiles[0])
  // run(testFiles[1])
  run(testFiles[2])
})
