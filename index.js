const fs = require("fs");
const path = require("path");

const compiled = new WebAssembly.Module(
  fs.readFileSync(path.resolve(__dirname, "./build/optimized.wasm"))
);
const memory = new WebAssembly.Memory({ initial: 10 });
const imports = {
  env: {
    memory,
    abort: (filename, line, column) => {
      throw Error(
        `abort called at ${filename ? filename + ":" : ""}${line}:${column}`
      );
    }
  }
};

const lzma = new WebAssembly.Instance(compiled, imports).exports;

// AssemblyScript ArrayBuffer header length
const AS_ARRAY_OFFSET = 24;

function decodeResult(ptr, memory) {
  const resultBuffer = new Uint32Array(memory.buffer, ptr, 4);
  const [success, error, unpackSize, dataPtr] = resultBuffer;
  if (success) {
    const data = new Uint8Array(
      memory.buffer,
      dataPtr + AS_ARRAY_OFFSET,
      unpackSize
    );
    return {
      error,
      unpackSize,
      data
    };
  }
  return {
    error,
    unpackSize,
    data: null
  };
}

// Decode LZMA data
module.exports = {
  decode(inputBuffer) {
    // Allocate memory to copy input data.
    const inputDataPtr = lzma.newU8Array(inputBuffer.length);
    // Create an Uint8Array using allocated buffer and set input data
    const u8Array = new Uint8Array(
      memory.buffer,
      inputDataPtr + AS_ARRAY_OFFSET,
      inputBuffer.length
    );
    u8Array.set(inputBuffer);
    const resultPtr = lzma.decode(inputDataPtr);
    const result = decodeResult(resultPtr, memory);
    return result;
  }
};
