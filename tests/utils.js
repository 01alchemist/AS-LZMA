const AS_ARRAY_OFFSET = 24
class DecodeResult {
  constructor(ptr, memory) {
    const result = new Uint32Array(memory.buffer, ptr, 4)
    const [success, error, unpackSize, dataPtr] = result
    this.success = success
    this.error = error
    if (this.success) {
      this.unpackSize = unpackSize
      this.data = new Uint8Array(
        memory.buffer,
        dataPtr + AS_ARRAY_OFFSET,
        unpackSize,
      )
    }
  }
}
module.exports = {
  AS_ARRAY_OFFSET,
  DecodeResult,
}
