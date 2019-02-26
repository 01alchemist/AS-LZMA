class LzmaEncProps {
  constructor(
    public level: i32 /* 0 <= level <= 9 */,
    public dictSize: u32 /* (1 << 12) <= dictSize <= (1 << 27) for 32-bit version
                      (1 << 12) <= dictSize <= (3 << 29) for 64-bit version
                      default = (1 << 24) */,
    public lc: i32 /* 0 <= lc <= 8, default = 3 */,
    public lp: i32 /* 0 <= lp <= 4, default = 0 */,
    public pb: i32 /* 0 <= pb <= 4, default = 2 */,
    public algo: i32 /* 0 - fast, 1 - normal, default = 1 */,
    public fb: i32 /* 5 <= fb <= 273, default = 32 */,
    public btMode: i32 /* 0 - hashChain Mode, 1 - binTree mode - normal, default = 1 */,
    public numHashBytes: i32 /* 2, 3 or 4, default = 4 */,
    public mc: u32 /* 1 <= mc <= (1 << 30), default = 32 */,
    public writeEndMark: u16 /* 0 - do not write EOPM, 1 - write EOPM, default = 0 */,
    public numThreads: i32 /* 1 or 2, default = 2 */,
    public reduceSize: u64 /* estimated size of data that will be compressed. default = (UInt64)(Int64)-1.
                        Encoder uses this value to reduce dictionary size */,
  ) {}
}

export class LzmaEncoder {
  static readonly kLzmaMaxHistorySize: u32 = (<u32>3) << 29
  static readonly kNumTopBits: u32 = 24
  static readonly kTopValue: u32 = (<u32>1) << LzmaEncoder.kNumTopBits
  static readonly kNumBitModelTotalBits: u32 = 11
  static readonly kBitModelTotal: u32 = 1 << LzmaEncoder.kNumBitModelTotalBits
  static readonly kNumMoveBits: u32 = 5
  static readonly kProbInitValue: u32 = LzmaEncoder.kBitModelTotal >> 1
  static readonly kNumMoveReducingBits: u32 = 4
  static readonly kNumBitPriceShiftBits: u32 = 4
  static readonly kBitPrice: u32 = 1 << LzmaEncoder.kNumBitPriceShiftBits
  static readonly REP_LEN_COUNT: u32 = 64
  static readonly kNumLogBits: u32 = 9 + 4 / 2
  static readonly kDicLogSizeMaxCompress: u32 =
    (LzmaEncoder.kNumLogBits - 1) * 2 + 7

  constructor() {}

  @inline
  LzmaEncProps_Init(p: LzmaEncProps): void {
    p.level = 5
    p.dictSize = p.mc = 0
    p.reduceSize = <u64>(<i64>-1)
    p.lc = p.lp = p.pb = p.algo = p.fb = p.btMode = p.numHashBytes = p.numThreads = -1
    p.writeEndMark = 0
  }

  @inline
  LzmaEncProps_Normalize(p: LzmaEncProps): void {
    var level = p.level
    if (level < 0) {
      level = 5
    }
    p.level = level

    if (p.dictSize == 0) {
      p.dictSize =
        level <= 5 ? 1 << (level * 2 + 14) : level <= 7 ? 1 << 25 : 1 << 26
    }

    if (p.dictSize > p.reduceSize) {
      let i: u16
      let reduceSize: u32 = <u32>p.reduceSize
      for (i = 11; i <= 30; i++) {
        if (reduceSize <= (<u32>2) << i) {
          p.dictSize = (<u32>2) << i
          break
        }
        if (reduceSize <= (<u32>3) << i) {
          p.dictSize = (<u32>3) << i
          break
        }
      }
    }

    if (p.lc < 0) p.lc = 3
    if (p.lp < 0) p.lp = 0
    if (p.pb < 0) p.pb = 2

    if (p.algo < 0) p.algo = level < 5 ? 0 : 1
    if (p.fb < 0) p.fb = level < 7 ? 32 : 64
    if (p.btMode < 0) p.btMode = p.algo == 0 ? 0 : 1
    if (p.numHashBytes < 0) p.numHashBytes = 4
    if (p.mc == 0) p.mc = (16 + (p.fb >> 1)) >> (p.btMode ? 0 : 1)

    if (p.numThreads < 0) p.numThreads = 1
  }

  LzmaEncProps_GetDictSize(props2: LzmaEncProps): u32 {
    var props: LzmaEncProps = props2
    this.LzmaEncProps_Normalize(props)
    return props.dictSize
  }

  @inline
  static LzmaEnc_FastPosInit(g_FastPos: Uint8Array): void {
    var slot: u16
    g_FastPos[0] = 0
    g_FastPos[1] = 1
    var offset = 2

    for (slot = 2; slot < LzmaEncoder.kNumLogBits * 2; slot++) {
      let k: usize = (<usize>1) << ((slot >> 1) - 1)
      let j: usize
      for (j = 0; j < k; j++) {
        g_FastPos[offset + j] = <i8>slot
      }
      offset += k
    }
  }

  @inline
  BSR2_RET(pos:i32) { 
    var zz:u16 = (pos < (1 << (LzmaEncoder.kNumLogBits + 6))) ? 6 : 6 + LzmaEncoder.kNumLogBits - 1;
    return p.g_FastPos[pos >> zz] + (zz * 2); 
  }
  
  @inline
  GetPosSlot1(p:LzmaEncProps, pos) p.g_FastPos[pos]
  GetPosSlot2(pos, res) { BSR2_RET(pos, res); }
  GetPosSlot(pos, res) { if (pos < kNumFullDistances) res = p.g_FastPos[pos & (kNumFullDistances - 1)]; else BSR2_RET(pos, res); }

}
