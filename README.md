LZMA Decoder (AssemblyScript)
============

This is an experimental lzma decoder written in [AssemblyScript](https://github.com/AssemblyScript/assemblyscript)

Example
-------

[example code](/examples)

```javascript
var memory = new WebAssembly.Memory({ initial: 160 })
...
// You know how to instantiate WASM module
var lzma = module.instance.exports

// Get compressed data by fetch or by some other means
var inputData = new Uint8Array(await (await fetch('PATH/TO/COMPRESSED_FILE.lzma')).arrayBuffer())

// Allocate memory to copy input data. 
const inputDataPtr = lzma.newU8Array(inputData.length)

// AssemblyScript ArrayBuffer header length
const AS_ARRAY_OFFSET = 24

// Create an Uint8Array using allocated buffer and set input data
const u8Array = new Uint8Array(
  memory.buffer,
  inputDataPtr + AS_ARRAY_OFFSET,
  inputData.length
)
u8Array.set(inputData)

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

// Decode LZMA data
const resultPtr = lzma.decode(inputDataPtr)
const result = new DecodeResult(resultPtr, memory)

// Decompressed data
console.log(result.data)

// If the data is plain text, decode using TextDecoder
// const decoder = new TextDecoder()
// const text = decoder.decode(result.data)
// console.log(text)

```

How to make lzma file
----------------------

Download [lzma sdk] and use following command

```sh
lzma e input_filename.extension output_filename.lzma
```

Developed by [Nidin Vinayakan]

License
----

MIT

[lzma sdk]:http://www.7-zip.org/sdk.html
[Nidin Vinayakan]:https://github.com/nidin
