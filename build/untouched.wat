(module
 (type $_ (func))
 (type $ii (func (param i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiii_ (func (param i32 i32 i32 i32)))
 (type $iii_ (func (param i32 i32 i32)))
 (type $i_ (func (param i32)))
 (type $ii_ (func (param i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiii (func (param i32 i32 i32 i32) (result i32)))
 (import "env" "memory" (memory $0 1))
 (data (i32.const 8) "\n\00\00\00u\00s\00e\00 \00s\00t\00r\00i\00c\00t\00")
 (data (i32.const 32) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 64) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 128) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 192) "\18\00\00\00s\00r\00c\00/\00l\00z\00m\00a\00/\00l\00z\00m\00a\00-\00d\00e\00c\00o\00d\00e\00r\00.\00t\00s\00")
 (data (i32.const 248) "\10\00\00\00s\00r\00c\00/\00l\00z\00m\00a\00/\00l\00z\00m\00a\00.\00t\00s\00")
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $src/lzma/range-decoder/RangeDecoder.kTopValue (mut i32) (i32.const 0))
 (global $src/lzma/lzma/LZMA.LZMA_DIC_MIN (mut i32) (i32.const 0))
 (global $src/lzma/lzma/LZMA.LZMA_RES_ERROR (mut i32) (i32.const 0))
 (global $src/lzma/lzma/LZMA.LZMA_RES_FINISHED_WITH_MARKER (mut i32) (i32.const 1))
 (global $src/lzma/lzma/LZMA.LZMA_RES_FINISHED_WITHOUT_MARKER (mut i32) (i32.const 2))
 (global $src/lzma/lzma/LZMA.kNumBitModelTotalBits (mut i32) (i32.const 11))
 (global $src/lzma/lzma/LZMA.kNumMoveBits (mut i32) (i32.const 5))
 (global $src/lzma/lzma/LZMA.PROB_INIT_VAL (mut i32) (i32.const 0))
 (global $src/lzma/lzma/LZMA.kNumPosBitsMax (mut i32) (i32.const 4))
 (global $src/lzma/lzma/LZMA.kNumStates (mut i32) (i32.const 12))
 (global $src/lzma/lzma/LZMA.kNumLenToPosStates (mut i32) (i32.const 4))
 (global $src/lzma/lzma/LZMA.kNumAlignBits (mut i32) (i32.const 4))
 (global $src/lzma/lzma/LZMA.kStartPosModelIndex (mut i32) (i32.const 4))
 (global $src/lzma/lzma/LZMA.kEndPosModelIndex (mut i32) (i32.const 14))
 (global $src/lzma/lzma/LZMA.kNumFullDistances (mut i32) (i32.const 0))
 (global $src/lzma/lzma/LZMA.kMatchMinLen (mut i32) (i32.const 2))
 (global $src/index/lzma (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 284))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "newU8Array" (func $src/index/newU8Array))
 (export "unpackSize" (func $src/index/unpackSize))
 (export "decode" (func $src/index/decode))
 (start $start)
 (func $start:~lib/allocator/arena (; 1 ;) (type $_)
  global.get $~lib/memory/HEAP_BASE
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
 )
 (func $start:src/lzma/range-decoder (; 2 ;) (type $_)
  i32.const 1
  i32.const 24
  i32.shl
  global.set $src/lzma/range-decoder/RangeDecoder.kTopValue
 )
 (func $start:src/lzma/lzma-decoder (; 3 ;) (type $_)
  call $start:src/lzma/range-decoder
 )
 (func $start:src/lzma/lzma (; 4 ;) (type $_)
  call $start:~lib/allocator/arena
  call $start:src/lzma/lzma-decoder
  i32.const 8
  drop
  i32.const 1
  i32.const 12
  i32.shl
  global.set $src/lzma/lzma/LZMA.LZMA_DIC_MIN
  i32.const 1
  global.get $src/lzma/lzma/LZMA.kNumBitModelTotalBits
  i32.shl
  i32.const 65535
  i32.and
  i32.const 2
  i32.div_u
  global.set $src/lzma/lzma/LZMA.PROB_INIT_VAL
  i32.const 1
  global.get $src/lzma/lzma/LZMA.kEndPosModelIndex
  i32.const 1
  i32.shr_u
  i32.shl
  global.set $src/lzma/lzma/LZMA.kNumFullDistances
 )
 (func $~lib/internal/arraybuffer/computeSize (; 5 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 8
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/allocator/arena/__memory_allocate (; 6 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.set $1
  local.get $1
  local.get $0
  local.tee $2
  i32.const 1
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  local.set $4
  current_memory
  local.set $5
  local.get $4
  local.get $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $2
   local.get $5
   local.tee $3
   local.get $2
   local.tee $6
   local.get $3
   local.get $6
   i32.gt_s
   select
   local.set $3
   local.get $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $4
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 7 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741816
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 26
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $~lib/memory/memory.allocate|inlined.0 (result i32)
   local.get $0
   call $~lib/internal/arraybuffer/computeSize
   local.set $2
   local.get $2
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.0
  end
  local.set $1
  local.get $1
  local.get $0
  i32.store
  local.get $1
 )
 (func $~lib/memory/memory.allocate (; 8 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $~lib/internal/memory/memset (; 9 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  local.get $2
  i32.eqz
  if
   return
  end
  local.get $0
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 1
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 2
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 1
  i32.add
  local.get $1
  i32.store8
  local.get $0
  i32.const 2
  i32.add
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 2
  i32.sub
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 3
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 6
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 3
  i32.add
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 4
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 8
  i32.le_u
  if
   return
  end
  i32.const 0
  local.get $0
  i32.sub
  i32.const 3
  i32.and
  local.set $3
  local.get $0
  local.get $3
  i32.add
  local.set $0
  local.get $2
  local.get $3
  i32.sub
  local.set $2
  local.get $2
  i32.const -4
  i32.and
  local.set $2
  i32.const -1
  i32.const 255
  i32.div_u
  local.get $1
  i32.const 255
  i32.and
  i32.mul
  local.set $4
  local.get $0
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 4
  i32.sub
  local.get $4
  i32.store
  local.get $2
  i32.const 8
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 4
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 8
  i32.add
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 12
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 8
  i32.sub
  local.get $4
  i32.store
  local.get $2
  i32.const 24
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 12
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 16
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 20
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 24
  i32.add
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 28
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 24
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 20
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 16
  i32.sub
  local.get $4
  i32.store
  i32.const 24
  local.get $0
  i32.const 4
  i32.and
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.add
  local.set $0
  local.get $2
  local.get $3
  i32.sub
  local.set $2
  local.get $4
  i64.extend_i32_u
  local.get $4
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.set $5
  block $break|0
   loop $continue|0
    local.get $2
    i32.const 32
    i32.ge_u
    if
     block
      local.get $0
      local.get $5
      i64.store
      local.get $0
      i32.const 8
      i32.add
      local.get $5
      i64.store
      local.get $0
      i32.const 16
      i32.add
      local.get $5
      i64.store
      local.get $0
      i32.const 24
      i32.add
      local.get $5
      i64.store
      local.get $2
      i32.const 32
      i32.sub
      local.set $2
      local.get $0
      i32.const 32
      i32.add
      local.set $0
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/array/Array<BitTreeDecoder>#constructor (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 268435454
  i32.gt_u
  if
   i32.const 0
   i32.const 32
   i32.const 45
   i32.const 39
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 8
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.0
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  local.get $0
 )
 (func $~lib/array/Array<u16>#constructor (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 536870908
  i32.gt_u
  if
   i32.const 0
   i32.const 32
   i32.const 45
   i32.const 39
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 8
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.1
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  local.get $0
 )
 (func $src/lzma/bit-tree-decoder/BitTreeDecoder#constructor (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 8
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
  end
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.const 1
  local.get $0
  i32.load offset=4
  i32.shl
  call $~lib/array/Array<u16>#constructor
  i32.store
  local.get $0
 )
 (func $~lib/internal/memory/memcpy (; 13 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   loop $continue|0
    local.get $2
    if (result i32)
     local.get $1
     i32.const 3
     i32.and
    else     
     local.get $2
    end
    if
     block
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
     end
     br $continue|0
    end
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   block $break|1
    loop $continue|1
     local.get $2
     i32.const 16
     i32.ge_u
     if
      block
       local.get $0
       local.get $1
       i32.load
       i32.store
       local.get $0
       i32.const 4
       i32.add
       local.get $1
       i32.const 4
       i32.add
       i32.load
       i32.store
       local.get $0
       i32.const 8
       i32.add
       local.get $1
       i32.const 8
       i32.add
       i32.load
       i32.store
       local.get $0
       i32.const 12
       i32.add
       local.get $1
       i32.const 12
       i32.add
       i32.load
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
      end
      br $continue|1
     end
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    block (result i32)
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
    end
    block (result i32)
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
    end
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      block
       local.get $1
       i32.load
       local.set $3
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
       i32.load8_u
       i32.store8
       local.get $2
       i32.const 3
       i32.sub
       local.set $2
       block $break|3
        loop $continue|3
         local.get $2
         i32.const 17
         i32.ge_u
         if
          block
           local.get $1
           i32.const 1
           i32.add
           i32.load
           local.set $4
           local.get $0
           local.get $3
           i32.const 24
           i32.shr_u
           local.get $4
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 5
           i32.add
           i32.load
           local.set $3
           local.get $0
           i32.const 4
           i32.add
           local.get $4
           i32.const 24
           i32.shr_u
           local.get $3
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 9
           i32.add
           i32.load
           local.set $4
           local.get $0
           i32.const 8
           i32.add
           local.get $3
           i32.const 24
           i32.shr_u
           local.get $4
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 13
           i32.add
           i32.load
           local.set $3
           local.get $0
           i32.const 12
           i32.add
           local.get $4
           i32.const 24
           i32.shr_u
           local.get $3
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 16
           i32.add
           local.set $1
           local.get $0
           i32.const 16
           i32.add
           local.set $0
           local.get $2
           i32.const 16
           i32.sub
           local.set $2
          end
          br $continue|3
         end
        end
       end
       br $break|2
       unreachable
      end
      unreachable
     end
     block
      local.get $1
      i32.load
      local.set $3
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
      i32.load8_u
      i32.store8
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 2
      i32.sub
      local.set $2
      block $break|4
       loop $continue|4
        local.get $2
        i32.const 18
        i32.ge_u
        if
         block
          local.get $1
          i32.const 2
          i32.add
          i32.load
          local.set $4
          local.get $0
          local.get $3
          i32.const 16
          i32.shr_u
          local.get $4
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 6
          i32.add
          i32.load
          local.set $3
          local.get $0
          i32.const 4
          i32.add
          local.get $4
          i32.const 16
          i32.shr_u
          local.get $3
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 10
          i32.add
          i32.load
          local.set $4
          local.get $0
          i32.const 8
          i32.add
          local.get $3
          i32.const 16
          i32.shr_u
          local.get $4
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 14
          i32.add
          i32.load
          local.set $3
          local.get $0
          i32.const 12
          i32.add
          local.get $4
          i32.const 16
          i32.shr_u
          local.get $3
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 16
          i32.add
          local.set $1
          local.get $0
          i32.const 16
          i32.add
          local.set $0
          local.get $2
          i32.const 16
          i32.sub
          local.set $2
         end
         br $continue|4
        end
       end
      end
      br $break|2
      unreachable
     end
     unreachable
    end
    block
     local.get $1
     i32.load
     local.set $3
     block (result i32)
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
     end
     block (result i32)
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
     end
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     block $break|5
      loop $continue|5
       local.get $2
       i32.const 19
       i32.ge_u
       if
        block
         local.get $1
         i32.const 3
         i32.add
         i32.load
         local.set $4
         local.get $0
         local.get $3
         i32.const 8
         i32.shr_u
         local.get $4
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 7
         i32.add
         i32.load
         local.set $3
         local.get $0
         i32.const 4
         i32.add
         local.get $4
         i32.const 8
         i32.shr_u
         local.get $3
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 11
         i32.add
         i32.load
         local.set $4
         local.get $0
         i32.const 8
         i32.add
         local.get $3
         i32.const 8
         i32.shr_u
         local.get $4
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 15
         i32.add
         i32.load
         local.set $3
         local.get $0
         i32.const 12
         i32.add
         local.get $4
         i32.const 8
         i32.shr_u
         local.get $3
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 16
         i32.add
         local.set $1
         local.get $0
         i32.const 16
         i32.add
         local.set $0
         local.get $2
         i32.const 16
         i32.sub
         local.set $2
        end
        br $continue|5
       end
      end
     end
     br $break|2
     unreachable
    end
    unreachable
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/internal/memory/memmove (; 14 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   return
  end
  local.get $1
  local.get $2
  i32.add
  local.get $0
  i32.le_u
  local.tee $3
  if (result i32)
   local.get $3
  else   
   local.get $0
   local.get $2
   i32.add
   local.get $1
   i32.le_u
  end
  if
   local.get $0
   local.get $1
   local.get $2
   call $~lib/internal/memory/memcpy
   return
  end
  local.get $0
  local.get $1
  i32.lt_u
  if
   local.get $1
   i32.const 7
   i32.and
   local.get $0
   i32.const 7
   i32.and
   i32.eq
   if
    block $break|0
     loop $continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       block
        local.get $2
        i32.eqz
        if
         return
        end
        local.get $2
        i32.const 1
        i32.sub
        local.set $2
        block (result i32)
         local.get $0
         local.tee $3
         i32.const 1
         i32.add
         local.set $0
         local.get $3
        end
        block (result i32)
         local.get $1
         local.tee $3
         i32.const 1
         i32.add
         local.set $1
         local.get $3
        end
        i32.load8_u
        i32.store8
       end
       br $continue|0
      end
     end
    end
    block $break|1
     loop $continue|1
      local.get $2
      i32.const 8
      i32.ge_u
      if
       block
        local.get $0
        local.get $1
        i64.load
        i64.store
        local.get $2
        i32.const 8
        i32.sub
        local.set $2
        local.get $0
        i32.const 8
        i32.add
        local.set $0
        local.get $1
        i32.const 8
        i32.add
        local.set $1
       end
       br $continue|1
      end
     end
    end
   end
   block $break|2
    loop $continue|2
     local.get $2
     if
      block
       block (result i32)
        local.get $0
        local.tee $3
        i32.const 1
        i32.add
        local.set $0
        local.get $3
       end
       block (result i32)
        local.get $1
        local.tee $3
        i32.const 1
        i32.add
        local.set $1
        local.get $3
       end
       i32.load8_u
       i32.store8
       local.get $2
       i32.const 1
       i32.sub
       local.set $2
      end
      br $continue|2
     end
    end
   end
  else   
   local.get $1
   i32.const 7
   i32.and
   local.get $0
   i32.const 7
   i32.and
   i32.eq
   if
    block $break|3
     loop $continue|3
      local.get $0
      local.get $2
      i32.add
      i32.const 7
      i32.and
      if
       block
        local.get $2
        i32.eqz
        if
         return
        end
        local.get $0
        local.get $2
        i32.const 1
        i32.sub
        local.tee $2
        i32.add
        local.get $1
        local.get $2
        i32.add
        i32.load8_u
        i32.store8
       end
       br $continue|3
      end
     end
    end
    block $break|4
     loop $continue|4
      local.get $2
      i32.const 8
      i32.ge_u
      if
       block
        local.get $2
        i32.const 8
        i32.sub
        local.set $2
        local.get $0
        local.get $2
        i32.add
        local.get $1
        local.get $2
        i32.add
        i64.load
        i64.store
       end
       br $continue|4
      end
     end
    end
   end
   block $break|5
    loop $continue|5
     local.get $2
     if
      local.get $0
      local.get $2
      i32.const 1
      i32.sub
      local.tee $2
      i32.add
      local.get $1
      local.get $2
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/allocator/arena/__memory_free (; 15 ;) (type $i_) (param $0 i32)
  nop
 )
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 16 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $1
  local.get $2
  i32.gt_s
  if
   local.get $1
   i32.const 1073741816
   i32.le_s
   i32.eqz
   if
    i32.const 0
    i32.const 64
    i32.const 40
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
   local.get $1
   local.get $2
   call $~lib/internal/arraybuffer/computeSize
   i32.const 8
   i32.sub
   i32.le_s
   if
    local.get $0
    local.get $1
    i32.store
   else    
    local.get $1
    call $~lib/internal/arraybuffer/allocateUnsafe
    local.set $3
    block $~lib/memory/memory.copy|inlined.0
     local.get $3
     i32.const 8
     i32.add
     local.set $4
     local.get $0
     i32.const 8
     i32.add
     local.set $5
     local.get $2
     local.set $6
     local.get $4
     local.get $5
     local.get $6
     call $~lib/internal/memory/memmove
    end
    block $~lib/memory/memory.free|inlined.0
     local.get $0
     local.set $6
     local.get $6
     call $~lib/allocator/arena/__memory_free
     br $~lib/memory/memory.free|inlined.0
    end
    local.get $3
    local.set $0
   end
   block $~lib/memory/memory.fill|inlined.2
    local.get $0
    i32.const 8
    i32.add
    local.get $2
    i32.add
    local.set $3
    i32.const 0
    local.set $6
    local.get $1
    local.get $2
    i32.sub
    local.set $5
    local.get $3
    local.get $6
    local.get $5
    call $~lib/internal/memory/memset
   end
  else   
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $1
    i32.const 0
    i32.ge_s
    i32.eqz
    if
     i32.const 0
     i32.const 64
     i32.const 62
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.store
   end
  end
  local.get $0
 )
 (func $~lib/array/Array<BitTreeDecoder>#__set (; 17 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load
  local.set $3
  local.get $3
  i32.load
  i32.const 2
  i32.shr_u
  local.set $4
  local.get $1
  local.get $4
  i32.ge_u
  if
   local.get $1
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 32
    i32.const 107
    i32.const 41
    call $~lib/env/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   local.set $3
   local.get $0
   local.get $3
   i32.store
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=4
  end
  block $~lib/internal/arraybuffer/STORE<BitTreeDecoder,BitTreeDecoder>|inlined.0
   local.get $3
   local.set $5
   local.get $1
   local.set $6
   local.get $2
   local.set $7
   i32.const 0
   local.set $8
   local.get $5
   local.get $6
   i32.const 2
   i32.shl
   i32.add
   local.get $8
   i32.add
   local.get $7
   i32.store offset=8
  end
 )
 (func $src/lzma/bit-tree-decoder/BitTreeDecoder.constructArray (; 18 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  local.get $1
  call $~lib/array/Array<BitTreeDecoder>#constructor
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
    local.get $3
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $3
    i32.const 0
    local.get $0
    call $src/lzma/bit-tree-decoder/BitTreeDecoder#constructor
    call $~lib/array/Array<BitTreeDecoder>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $2
 )
 (func $src/lzma/len-decoder/LenDecoder#constructor (; 19 ;) (type $ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 16
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
  end
  i32.const 3
  i32.const 1
  global.get $src/lzma/lzma/LZMA.kNumPosBitsMax
  i32.shl
  call $src/lzma/bit-tree-decoder/BitTreeDecoder.constructArray
  i32.store offset=4
  local.get $0
  i32.const 3
  i32.const 1
  global.get $src/lzma/lzma/LZMA.kNumPosBitsMax
  i32.shl
  call $src/lzma/bit-tree-decoder/BitTreeDecoder.constructArray
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.const 8
  call $src/lzma/bit-tree-decoder/BitTreeDecoder#constructor
  i32.store offset=12
  local.get $0
 )
 (func $src/lzma/range-decoder/RangeDecoder#constructor (; 20 ;) (type $ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 44
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store8 offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
   i32.const 1
   i32.store offset=24
   local.get $0
   i32.const 2
   i32.store offset=28
   local.get $0
   i32.const 3
   i32.store offset=32
   local.get $0
   i32.const 0
   i32.store offset=36
   local.get $0
   i32.const 0
   i32.store offset=40
   local.get $0
  end
  i32.const 13
  i32.store offset=8
  local.get $0
 )
 (func $src/lzma/out-window/OutWindow#constructor (; 21 ;) (type $ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 25
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
   i32.const 0
   i32.store8 offset=24
   local.get $0
  end
  i32.const 0
  i32.store offset=16
  local.get $0
 )
 (func $src/lzma/lzma-decoder/LzmaDecoder#constructor (; 22 ;) (type $ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 112
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store8 offset=20
   local.get $0
   i32.const 0
   i32.store offset=24
   local.get $0
   i32.const 0
   i32.store8 offset=28
   local.get $0
   i32.const 0
   i32.store offset=32
   local.get $0
   i32.const 0
   i32.store offset=36
   local.get $0
   i32.const 0
   i32.store offset=40
   local.get $0
   i32.const 0
   i32.store offset=44
   local.get $0
   i32.const 0
   i32.store offset=48
   local.get $0
   i32.const 0
   i32.store offset=52
   local.get $0
   i32.const 0
   i32.store offset=56
   local.get $0
   i32.const 0
   i32.store offset=60
   local.get $0
   i32.const 0
   i32.store offset=64
   local.get $0
   i32.const 0
   i32.store offset=68
   local.get $0
   i32.const 0
   i32.store offset=72
   local.get $0
   i32.const 0
   i32.store offset=76
   local.get $0
   i32.const 0
   i32.store offset=80
   local.get $0
   i32.const 0
   i32.store offset=84
   local.get $0
   i32.const 0
   i32.store offset=88
   local.get $0
   i32.const 0
   i32.store offset=92
   local.get $0
   i32.const 0
   i32.store offset=96
   local.get $0
   i32.const 0
   i32.store offset=100
   local.get $0
   i32.const 0
   i32.store offset=104
   local.get $0
   i32.const 0
   i32.store offset=108
   local.get $0
  end
  i32.const 6
  global.get $src/lzma/lzma/LZMA.kNumLenToPosStates
  call $src/lzma/bit-tree-decoder/BitTreeDecoder.constructArray
  i32.store offset=36
  local.get $0
  i32.const 0
  global.get $src/lzma/lzma/LZMA.kNumAlignBits
  call $src/lzma/bit-tree-decoder/BitTreeDecoder#constructor
  i32.store offset=40
  local.get $0
  i32.const 0
  i32.const 1
  global.get $src/lzma/lzma/LZMA.kNumFullDistances
  i32.add
  global.get $src/lzma/lzma/LZMA.kEndPosModelIndex
  i32.sub
  call $~lib/array/Array<u16>#constructor
  i32.store offset=44
  local.get $0
  i32.const 0
  global.get $src/lzma/lzma/LZMA.kNumStates
  global.get $src/lzma/lzma/LZMA.kNumPosBitsMax
  i32.shl
  call $~lib/array/Array<u16>#constructor
  i32.store offset=48
  local.get $0
  i32.const 0
  global.get $src/lzma/lzma/LZMA.kNumStates
  call $~lib/array/Array<u16>#constructor
  i32.store offset=52
  local.get $0
  i32.const 0
  global.get $src/lzma/lzma/LZMA.kNumStates
  call $~lib/array/Array<u16>#constructor
  i32.store offset=56
  local.get $0
  i32.const 0
  global.get $src/lzma/lzma/LZMA.kNumStates
  call $~lib/array/Array<u16>#constructor
  i32.store offset=60
  local.get $0
  i32.const 0
  global.get $src/lzma/lzma/LZMA.kNumStates
  call $~lib/array/Array<u16>#constructor
  i32.store offset=64
  local.get $0
  i32.const 0
  global.get $src/lzma/lzma/LZMA.kNumStates
  global.get $src/lzma/lzma/LZMA.kNumPosBitsMax
  i32.shl
  call $~lib/array/Array<u16>#constructor
  i32.store offset=68
  local.get $0
  i32.const 0
  call $src/lzma/len-decoder/LenDecoder#constructor
  i32.store offset=72
  local.get $0
  i32.const 0
  call $src/lzma/len-decoder/LenDecoder#constructor
  i32.store offset=76
  local.get $0
  i32.const 0
  call $src/lzma/range-decoder/RangeDecoder#constructor
  i32.store offset=4
  local.get $0
  i32.const 0
  call $src/lzma/out-window/OutWindow#constructor
  i32.store offset=8
  local.get $0
 )
 (func $src/lzma/lzma/LZMA#constructor (; 23 ;) (type $ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 8
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
  end
  i32.const 0
  call $src/lzma/lzma-decoder/LzmaDecoder#constructor
  i32.store
  local.get $0
 )
 (func $start:src/index (; 24 ;) (type $_)
  call $start:src/lzma/lzma
  i32.const 0
  call $src/lzma/lzma/LZMA#constructor
  global.set $src/index/lzma
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#constructor (; 25 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 128
   i32.const 23
   i32.const 34
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block $~lib/memory/memory.fill|inlined.3
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 12
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 26 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
  local.set $0
  local.get $0
 )
 (func $src/index/newU8Array (; 27 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  call $~lib/typedarray/Uint8Array#constructor
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#__get (; 28 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 128
   i32.const 39
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.0 (result i32)
   local.get $0
   i32.load
   local.set $2
   local.get $1
   local.set $3
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $2
   local.get $3
   i32.const 0
   i32.shl
   i32.add
   local.get $4
   i32.add
   i32.load8_u offset=8
  end
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#__set (; 29 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 128
   i32.const 50
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/arraybuffer/STORE<u8,u32>|inlined.0
   local.get $0
   i32.load
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $0
   i32.load offset=4
   local.set $6
   local.get $3
   local.get $4
   i32.const 0
   i32.shl
   i32.add
   local.get $6
   i32.add
   local.get $5
   i32.store8 offset=8
  end
 )
 (func $src/lzma/lzma/LZMA#unpackSize (; 30 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 0
  i32.const 13
  call $~lib/typedarray/Uint8Array#constructor
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
    local.get $3
    i32.const 13
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $3
    local.get $1
    local.get $3
    call $~lib/internal/typedarray/TypedArray<u8>#__get
    i32.const 255
    i32.and
    call $~lib/internal/typedarray/TypedArray<u8>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  block $break|1
   i32.const 0
   local.set $3
   loop $repeat|1
    local.get $3
    i32.const 8
    i32.lt_s
    i32.eqz
    br_if $break|1
    block
     local.get $2
     i32.const 5
     local.get $3
     i32.add
     call $~lib/internal/typedarray/TypedArray<u8>#__get
     i32.const 255
     i32.and
     local.set $6
     local.get $6
     i32.const 255
     i32.ne
     if
      i32.const 1
      local.set $5
     end
     local.get $4
     local.get $6
     i32.const 8
     local.get $3
     i32.mul
     i32.shl
     i32.or
     local.set $4
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $4
 )
 (func $src/index/unpackSize (; 31 ;) (type $ii) (param $0 i32) (result i32)
  global.get $src/index/lzma
  local.get $0
  call $src/lzma/lzma/LZMA#unpackSize
 )
 (func $src/lzma/lzma-decoder/LzmaDecoder#decodeProperties (; 32 ;) (type $ii_) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.set $2
  local.get $2
  i32.const 0
  local.get $1
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $2
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 9
  i32.const 5
  i32.mul
  i32.const 5
  i32.mul
  i32.const 255
  i32.and
  i32.ge_u
  if
   i32.const 0
   i32.const 192
   i32.const 164
   i32.const 12
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.const 1
  local.get $2
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 9
  i32.rem_u
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $2
  i32.const 0
  local.get $2
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 9
  i32.div_u
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $2
  i32.const 2
  local.get $2
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 5
  i32.div_u
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $2
  i32.const 3
  local.get $2
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 5
  i32.rem_u
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.store offset=12
  local.get $0
  local.get $2
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.store offset=16
  local.get $0
  local.get $2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.store8 offset=20
  local.get $0
  i32.const 0
  i32.store8 offset=28
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
    local.get $3
    i32.const 4
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $0
    i32.load8_u offset=28
    local.get $1
    local.get $3
    i32.const 1
    i32.add
    i32.const 255
    i32.and
    call $~lib/internal/typedarray/TypedArray<u8>#__get
    i32.const 8
    local.get $3
    i32.mul
    i32.shl
    i32.or
    i32.store8 offset=28
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  local.get $0
  i32.load8_u offset=28
  i32.store offset=24
  local.get $0
  i32.load offset=24
  global.get $src/lzma/lzma/LZMA.LZMA_DIC_MIN
  i32.lt_u
  if
   local.get $0
   global.get $src/lzma/lzma/LZMA.LZMA_DIC_MIN
   i32.store offset=24
  end
 )
 (func $src/lzma/out-window/OutWindow#create (; 33 ;) (type $ii_) (param $0 i32) (param $1 i32)
  local.get $0
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint8Array#constructor
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=20
  local.get $0
  i32.const 0
  i32.store8 offset=24
  local.get $0
  i32.const 0
  i32.store
 )
 (func $src/lzma/lzma-decoder/LzmaDecoder#createLiterals (; 34 ;) (type $i_) (param $0 i32)
  local.get $0
  i32.const 0
  i32.const 768
  local.get $0
  i32.load offset=12
  local.get $0
  i32.load8_u offset=20
  i32.add
  i32.shl
  call $~lib/array/Array<u16>#constructor
  i32.store offset=32
 )
 (func $src/lzma/lzma-decoder/LzmaDecoder#create (; 35 ;) (type $i_) (param $0 i32)
  local.get $0
  i32.load offset=8
  local.get $0
  i32.load offset=24
  call $src/lzma/out-window/OutWindow#create
  local.get $0
  call $src/lzma/lzma-decoder/LzmaDecoder#createLiterals
 )
 (func $~lib/array/Array<u16>#__set (; 36 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load
  local.set $3
  local.get $3
  i32.load
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $1
  local.get $4
  i32.ge_u
  if
   local.get $1
   i32.const 536870908
   i32.ge_u
   if
    i32.const 0
    i32.const 32
    i32.const 107
    i32.const 41
    call $~lib/env/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   i32.const 1
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   local.set $3
   local.get $0
   local.get $3
   i32.store
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=4
  end
  block $~lib/internal/arraybuffer/STORE<u16,u16>|inlined.0
   local.get $3
   local.set $5
   local.get $1
   local.set $6
   local.get $2
   local.set $7
   i32.const 0
   local.set $8
   local.get $5
   local.get $6
   i32.const 1
   i32.shl
   i32.add
   local.get $8
   i32.add
   local.get $7
   i32.store16 offset=8
  end
 )
 (func $src/lzma/lzma-decoder/LzmaDecoder#initLiterals (; 37 ;) (type $i_) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 768
  local.get $0
  i32.load offset=12
  local.get $0
  i32.load8_u offset=20
  i32.add
  i32.shl
  local.set $1
  block $break|0
   i32.const 0
   local.set $2
   loop $repeat|0
    local.get $2
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    i32.load offset=32
    local.get $2
    global.get $src/lzma/lzma/LZMA.PROB_INIT_VAL
    call $~lib/array/Array<u16>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/array/Array<BitTreeDecoder>#__get (; 38 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $1
  local.get $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $2
   local.set $3
   local.get $1
   local.set $4
   i32.const 0
   local.set $5
   local.get $3
   local.get $4
   i32.const 2
   i32.shl
   i32.add
   local.get $5
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $src/lzma/lzma/LZMA.INIT_PROBS (; 39 ;) (type $i_) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   i32.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    block $~lib/array/Array<u16>#get:length|inlined.1 (result i32)
     local.get $0
     local.set $2
     local.get $2
     i32.load offset=4
    end
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $1
    global.get $src/lzma/lzma/LZMA.PROB_INIT_VAL
    call $~lib/array/Array<u16>#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $src/lzma/bit-tree-decoder/BitTreeDecoder#init (; 40 ;) (type $i_) (param $0 i32)
  local.get $0
  i32.load
  call $src/lzma/lzma/LZMA.INIT_PROBS
 )
 (func $src/lzma/lzma-decoder/LzmaDecoder#initDist (; 41 ;) (type $i_) (param $0 i32)
  (local $1 i32)
  block $break|0
   i32.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    global.get $src/lzma/lzma/LZMA.kNumLenToPosStates
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    i32.load offset=36
    local.get $1
    call $~lib/array/Array<BitTreeDecoder>#__get
    call $src/lzma/bit-tree-decoder/BitTreeDecoder#init
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  i32.load offset=40
  call $src/lzma/bit-tree-decoder/BitTreeDecoder#init
  local.get $0
  i32.load offset=44
  call $src/lzma/lzma/LZMA.INIT_PROBS
 )
 (func $~lib/array/Array<u16>#__unchecked_set (; 42 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  i32.const 0
  local.set $6
  local.get $3
  local.get $4
  i32.const 1
  i32.shl
  i32.add
  local.get $6
  i32.add
  local.get $5
  i32.store16 offset=8
 )
 (func $src/lzma/len-decoder/LenDecoder#init (; 43 ;) (type $i_) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  block (result i32)
   i32.const 0
   i32.const 2
   call $~lib/array/Array<u16>#constructor
   local.set $1
   local.get $1
   i32.const 0
   global.get $src/lzma/lzma/LZMA.PROB_INIT_VAL
   call $~lib/array/Array<u16>#__unchecked_set
   local.get $1
   i32.const 1
   global.get $src/lzma/lzma/LZMA.PROB_INIT_VAL
   call $~lib/array/Array<u16>#__unchecked_set
   local.get $1
  end
  i32.store
  local.get $0
  i32.load offset=12
  call $src/lzma/bit-tree-decoder/BitTreeDecoder#init
  block $break|0
   i32.const 0
   local.set $2
   loop $repeat|0
    local.get $2
    i32.const 1
    global.get $src/lzma/lzma/LZMA.kNumPosBitsMax
    i32.shl
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $0
     i32.load offset=4
     local.get $2
     call $~lib/array/Array<BitTreeDecoder>#__get
     call $src/lzma/bit-tree-decoder/BitTreeDecoder#init
     local.get $0
     i32.load offset=8
     local.get $2
     call $~lib/array/Array<BitTreeDecoder>#__get
     call $src/lzma/bit-tree-decoder/BitTreeDecoder#init
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $src/lzma/lzma-decoder/LzmaDecoder#init (; 44 ;) (type $i_) (param $0 i32)
  local.get $0
  call $src/lzma/lzma-decoder/LzmaDecoder#initLiterals
  local.get $0
  call $src/lzma/lzma-decoder/LzmaDecoder#initDist
  local.get $0
  i32.load offset=48
  call $src/lzma/lzma/LZMA.INIT_PROBS
  local.get $0
  i32.load offset=52
  call $src/lzma/lzma/LZMA.INIT_PROBS
  local.get $0
  i32.load offset=56
  call $src/lzma/lzma/LZMA.INIT_PROBS
  local.get $0
  i32.load offset=60
  call $src/lzma/lzma/LZMA.INIT_PROBS
  local.get $0
  i32.load offset=64
  call $src/lzma/lzma/LZMA.INIT_PROBS
  local.get $0
  i32.load offset=68
  call $src/lzma/lzma/LZMA.INIT_PROBS
  local.get $0
  i32.load offset=72
  call $src/lzma/len-decoder/LenDecoder#init
  local.get $0
  i32.load offset=76
  call $src/lzma/len-decoder/LenDecoder#init
 )
 (func $~lib/internal/typedarray/TypedArray<u32>#constructor (; 45 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 268435454
  i32.gt_u
  if
   i32.const 0
   i32.const 128
   i32.const 23
   i32.const 34
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block $~lib/memory/memory.fill|inlined.4
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 12
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Uint32Array#constructor (; 46 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/internal/typedarray/TypedArray<u32>#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/internal/typedarray/TypedArray<u32>#__set (; 47 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 128
   i32.const 50
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/arraybuffer/STORE<u32,u32>|inlined.0
   local.get $0
   i32.load
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $0
   i32.load offset=4
   local.set $6
   local.get $3
   local.get $4
   i32.const 2
   i32.shl
   i32.add
   local.get $6
   i32.add
   local.get $5
   i32.store offset=8
  end
 )
 (func $~lib/internal/typedarray/TypedArray<u32>#__get (; 48 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 128
   i32.const 39
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/arraybuffer/LOAD<u32,u32>|inlined.0 (result i32)
   local.get $0
   i32.load
   local.set $2
   local.get $1
   local.set $3
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $2
   local.get $3
   i32.const 2
   i32.shl
   i32.add
   local.get $4
   i32.add
   i32.load offset=8
  end
 )
 (func $src/lzma/range-decoder/RangeDecoder#init (; 49 ;) (type $i_) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 0
  i32.const 4
  call $~lib/typedarray/Uint32Array#constructor
  i32.store offset=36
  local.get $0
  i32.const 0
  i32.const 4
  call $~lib/array/Array<u16>#constructor
  i32.store offset=40
  local.get $0
  i32.const 0
  i32.store8 offset=4
  local.get $0
  i32.load
  block (result i32)
   local.get $0
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.const 1
   i32.add
   i32.store offset=8
   local.get $1
  end
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.ne
  if
   local.get $0
   i32.const 1
   i32.store8 offset=4
  end
  local.get $0
  i32.load offset=36
  local.get $0
  i32.load offset=20
  i32.const -1
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $0
  i32.load offset=36
  local.get $0
  i32.load offset=24
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  block $break|0
   i32.const 0
   local.set $2
   loop $repeat|0
    local.get $2
    i32.const 4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    i32.load offset=36
    local.get $0
    i32.load offset=24
    local.get $0
    i32.load offset=36
    local.get $0
    i32.load offset=24
    call $~lib/internal/typedarray/TypedArray<u32>#__get
    i32.const 8
    i32.shl
    local.get $0
    i32.load
    block (result i32)
     local.get $0
     local.get $0
     i32.load offset=8
     local.tee $1
     i32.const 1
     i32.add
     i32.store offset=8
     local.get $1
    end
    call $~lib/internal/typedarray/TypedArray<u8>#__get
    i32.const 255
    i32.and
    i32.or
    call $~lib/internal/typedarray/TypedArray<u32>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  i32.load offset=36
  local.get $0
  i32.load offset=24
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  local.get $0
  i32.load offset=36
  local.get $0
  i32.load offset=20
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.eq
  if
   local.get $0
   i32.const 1
   i32.store8 offset=4
  end
 )
 (func $src/lzma/range-decoder/RangeDecoder#isFinishedOK (; 50 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=36
  local.get $0
  i32.load offset=24
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 0
  i32.eq
 )
 (func $~lib/array/Array<u16>#__get (; 51 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $1
  local.get $2
  i32.load
  i32.const 1
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $2
   local.set $3
   local.get $1
   local.set $4
   i32.const 0
   local.set $5
   local.get $3
   local.get $4
   i32.const 1
   i32.shl
   i32.add
   local.get $5
   i32.add
   i32.load16_u offset=8
  else   
   unreachable
  end
 )
 (func $src/lzma/range-decoder/RangeDecoder#decodeBit (; 52 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  i32.load offset=40
  i32.const 0
  local.get $1
  local.get $2
  call $~lib/array/Array<u16>#__get
  call $~lib/array/Array<u16>#__set
  local.get $0
  i32.load offset=36
  i32.const 2
  local.get $0
  i32.load offset=36
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 11
  i32.shr_u
  local.get $0
  i32.load offset=40
  i32.const 0
  call $~lib/array/Array<u16>#__get
  i32.const 65535
  i32.and
  i32.mul
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $0
  i32.load offset=36
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  local.get $0
  i32.load offset=36
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.lt_u
  if
   local.get $0
   i32.load offset=40
   i32.const 0
   local.get $0
   i32.load offset=40
   i32.const 0
   call $~lib/array/Array<u16>#__get
   i32.const 1
   i32.const 11
   i32.shl
   local.get $0
   i32.load offset=40
   i32.const 0
   call $~lib/array/Array<u16>#__get
   i32.sub
   i32.const 65535
   i32.and
   i32.const 5
   i32.shr_u
   i32.add
   call $~lib/array/Array<u16>#__set
   local.get $0
   i32.load offset=36
   i32.const 0
   local.get $0
   i32.load offset=36
   i32.const 2
   call $~lib/internal/typedarray/TypedArray<u32>#__get
   call $~lib/internal/typedarray/TypedArray<u32>#__set
   local.get $0
   i32.load offset=40
   i32.const 1
   i32.const 0
   call $~lib/array/Array<u16>#__set
  else   
   local.get $0
   i32.load offset=40
   i32.const 0
   local.get $0
   i32.load offset=40
   i32.const 0
   call $~lib/array/Array<u16>#__get
   local.get $0
   i32.load offset=40
   i32.const 0
   call $~lib/array/Array<u16>#__get
   i32.const 65535
   i32.and
   i32.const 5
   i32.shr_u
   i32.sub
   call $~lib/array/Array<u16>#__set
   local.get $0
   i32.load offset=36
   i32.const 1
   local.get $0
   i32.load offset=36
   i32.const 1
   call $~lib/internal/typedarray/TypedArray<u32>#__get
   local.get $0
   i32.load offset=36
   i32.const 2
   call $~lib/internal/typedarray/TypedArray<u32>#__get
   i32.sub
   call $~lib/internal/typedarray/TypedArray<u32>#__set
   local.get $0
   i32.load offset=36
   i32.const 0
   local.get $0
   i32.load offset=36
   i32.const 0
   call $~lib/internal/typedarray/TypedArray<u32>#__get
   local.get $0
   i32.load offset=36
   i32.const 2
   call $~lib/internal/typedarray/TypedArray<u32>#__get
   i32.sub
   call $~lib/internal/typedarray/TypedArray<u32>#__set
   local.get $0
   i32.load offset=40
   i32.const 1
   i32.const 1
   call $~lib/array/Array<u16>#__set
  end
  local.get $1
  local.get $2
  local.get $0
  i32.load offset=40
  i32.const 0
  call $~lib/array/Array<u16>#__get
  call $~lib/array/Array<u16>#__set
  local.get $0
  i32.load offset=36
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 16777216
  i32.lt_u
  if
   local.get $0
   i32.load offset=36
   i32.const 0
   local.get $0
   i32.load offset=36
   i32.const 0
   call $~lib/internal/typedarray/TypedArray<u32>#__get
   i32.const 8
   i32.shl
   call $~lib/internal/typedarray/TypedArray<u32>#__set
   local.get $0
   i32.load offset=36
   i32.const 1
   local.get $0
   i32.load offset=36
   i32.const 1
   call $~lib/internal/typedarray/TypedArray<u32>#__get
   i32.const 8
   i32.shl
   local.get $0
   i32.load
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=8
    local.tee $3
    i32.const 1
    i32.add
    i32.store offset=8
    local.get $3
   end
   call $~lib/internal/typedarray/TypedArray<u8>#__get
   i32.const 255
   i32.and
   i32.or
   call $~lib/internal/typedarray/TypedArray<u32>#__set
  end
  local.get $0
  i32.load offset=40
  i32.const 1
  call $~lib/array/Array<u16>#__get
  i32.const 65535
  i32.and
 )
 (func $src/lzma/out-window/OutWindow#isEmpty (; 53 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=12
  i32.const 0
  i32.eq
  local.tee $1
  if (result i32)
   local.get $0
   i32.load8_u offset=24
   i32.const 0
   i32.ne
   i32.eqz
  else   
   local.get $1
  end
 )
 (func $src/lzma/out-window/OutWindow#getByte (; 54 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=8
  local.get $1
  local.get $0
  i32.load offset=12
  i32.le_s
  if (result i32)
   local.get $0
   i32.load offset=12
   local.get $1
   i32.sub
  else   
   local.get $0
   i32.load offset=20
   local.get $1
   i32.sub
   local.get $0
   i32.load offset=12
   i32.add
  end
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
 )
 (func $src/lzma/out-window/OutWindow#putByte (; 55 ;) (type $ii_) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  local.get $0
  i32.load offset=8
  block (result i32)
   local.get $0
   local.get $0
   i32.load offset=12
   local.tee $2
   i32.const 1
   i32.add
   i32.store offset=12
   local.get $2
  end
  local.get $1
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $0
  i32.load offset=12
  local.get $0
  i32.load offset=20
  i32.eq
  if
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 1
   i32.store8 offset=24
  end
  local.get $0
  i32.load offset=4
  block (result i32)
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $2
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $2
  end
  local.get $1
  call $~lib/internal/typedarray/TypedArray<u8>#__set
 )
 (func $src/lzma/lzma-decoder/LzmaDecoder#decodeLiteral (; 56 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 0
  i32.store offset=104
  local.get $0
  i32.load offset=8
  call $src/lzma/out-window/OutWindow#isEmpty
  i32.eqz
  if
   local.get $0
   local.get $0
   i32.load offset=8
   i32.const 1
   call $src/lzma/out-window/OutWindow#getByte
   i32.store offset=104
  end
  local.get $0
  i32.const 1
  i32.store offset=100
  local.get $0
  local.get $0
  i32.load offset=8
  i32.load
  i32.const 1
  local.get $0
  i32.load8_u offset=20
  i32.shl
  i32.const 1
  i32.sub
  i32.and
  local.get $0
  i32.load offset=12
  i32.shl
  local.get $0
  i32.load offset=104
  i32.const 8
  local.get $0
  i32.load offset=12
  i32.sub
  i32.shr_u
  i32.add
  i32.store offset=108
  i32.const 768
  local.get $0
  i32.load offset=108
  i32.mul
  i32.const 0
  i32.or
  local.set $3
  local.get $1
  i32.const 255
  i32.and
  i32.const 7
  i32.ge_u
  if
   local.get $0
   local.get $0
   i32.load offset=8
   local.get $2
   i32.const 1
   i32.add
   call $src/lzma/out-window/OutWindow#getByte
   i32.store offset=92
   block $break|0
    loop $continue|0
     block
      local.get $0
      local.get $0
      i32.load offset=92
      i32.const 7
      i32.shr_u
      i32.const 1
      i32.and
      i32.store offset=88
      local.get $0
      local.get $0
      i32.load offset=92
      i32.const 1
      i32.shl
      i32.store offset=92
      local.get $0
      local.get $0
      i32.load offset=4
      local.get $0
      i32.load offset=32
      local.get $3
      i32.const 1
      local.get $0
      i32.load offset=88
      i32.add
      i32.const 8
      i32.shl
      i32.add
      local.get $0
      i32.load offset=100
      i32.add
      call $src/lzma/range-decoder/RangeDecoder#decodeBit
      i32.store offset=96
      local.get $0
      local.get $0
      i32.load offset=100
      i32.const 1
      i32.shl
      local.get $0
      i32.load offset=96
      i32.or
      i32.store offset=100
      local.get $0
      i32.load offset=88
      local.get $0
      i32.load offset=96
      i32.ne
      if
       br $break|0
      end
     end
     local.get $0
     i32.load offset=100
     i32.const 256
     i32.lt_s
     br_if $continue|0
    end
   end
  end
  block $break|1
   loop $continue|1
    local.get $0
    i32.load offset=100
    i32.const 256
    i32.lt_s
    if
     local.get $0
     local.get $0
     i32.load offset=100
     i32.const 1
     i32.shl
     local.get $0
     i32.load offset=4
     local.get $0
     i32.load offset=32
     local.get $3
     local.get $0
     i32.load offset=100
     i32.add
     call $src/lzma/range-decoder/RangeDecoder#decodeBit
     i32.or
     i32.store offset=100
     br $continue|1
    end
   end
  end
  local.get $0
  i32.load offset=8
  local.get $0
  i32.load offset=100
  i32.const 256
  i32.sub
  call $src/lzma/out-window/OutWindow#putByte
 )
 (func $src/lzma/lzma-decoder/LzmaDecoder#updateState_Literal (; 57 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 255
  i32.and
  i32.const 4
  i32.lt_u
  if
   i32.const 0
   return
  else   
   local.get $1
   i32.const 255
   i32.and
   i32.const 10
   i32.lt_u
   if
    local.get $1
    i32.const 3
    i32.sub
    return
   else    
    local.get $1
    i32.const 6
    i32.sub
    return
   end
   unreachable
  end
  unreachable
  unreachable
 )
 (func $src/lzma/lzma-decoder/LzmaDecoder#updateState_ShortRep (; 58 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 255
  i32.and
  i32.const 7
  i32.lt_u
  if (result i32)
   i32.const 9
  else   
   i32.const 11
  end
 )
 (func $src/lzma/bit-tree-decoder/BitTreeDecoder#decode (; 59 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
    local.get $3
    local.get $0
    i32.load offset=4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $2
    i32.const 1
    i32.shl
    local.get $1
    local.get $0
    i32.load
    local.get $2
    call $src/lzma/range-decoder/RangeDecoder#decodeBit
    i32.add
    local.set $2
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $2
  i32.const 1
  local.get $0
  i32.load offset=4
  i32.shl
  i32.sub
 )
 (func $src/lzma/len-decoder/LenDecoder#decode (; 60 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  local.get $0
  i32.load
  i32.const 0
  call $src/lzma/range-decoder/RangeDecoder#decodeBit
  i32.const 0
  i32.eq
  if
   local.get $0
   i32.load offset=4
   local.get $2
   call $~lib/array/Array<BitTreeDecoder>#__get
   local.get $1
   call $src/lzma/bit-tree-decoder/BitTreeDecoder#decode
   return
  end
  local.get $1
  local.get $0
  i32.load
  i32.const 1
  call $src/lzma/range-decoder/RangeDecoder#decodeBit
  i32.const 0
  i32.eq
  if
   i32.const 8
   local.get $0
   i32.load offset=8
   local.get $2
   call $~lib/array/Array<BitTreeDecoder>#__get
   local.get $1
   call $src/lzma/bit-tree-decoder/BitTreeDecoder#decode
   i32.add
   return
  end
  i32.const 16
  local.get $0
  i32.load offset=12
  local.get $1
  call $src/lzma/bit-tree-decoder/BitTreeDecoder#decode
  i32.add
 )
 (func $src/lzma/lzma-decoder/LzmaDecoder#updateState_Rep (; 61 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 255
  i32.and
  i32.const 7
  i32.lt_u
  if (result i32)
   i32.const 8
  else   
   i32.const 11
  end
 )
 (func $src/lzma/lzma-decoder/LzmaDecoder#updateState_Match (; 62 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 255
  i32.and
  i32.const 7
  i32.lt_u
  if (result i32)
   i32.const 7
  else   
   i32.const 10
  end
 )
 (func $src/lzma/lzma/LZMA.BitTreeReverseDecode (; 63 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 1
  local.set $4
  i32.const 0
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $repeat|0
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $2
     local.get $0
     local.get $3
     local.get $4
     i32.add
     call $src/lzma/range-decoder/RangeDecoder#decodeBit
     local.set $7
     local.get $4
     i32.const 1
     i32.shl
     local.set $4
     local.get $4
     local.get $7
     i32.add
     local.set $4
     local.get $5
     local.get $7
     local.get $6
     i32.shl
     i32.or
     local.set $5
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
 )
 (func $src/lzma/range-decoder/RangeDecoder#normalize (; 64 ;) (type $i_) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=36
  local.get $0
  i32.load offset=20
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  global.get $src/lzma/range-decoder/RangeDecoder.kTopValue
  i32.lt_u
  if
   local.get $0
   i32.load offset=36
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=36
   local.get $0
   i32.load offset=20
   call $~lib/internal/typedarray/TypedArray<u32>#__get
   i32.const 8
   i32.shl
   call $~lib/internal/typedarray/TypedArray<u32>#__set
   local.get $0
   i32.load offset=36
   local.get $0
   i32.load offset=24
   local.get $0
   i32.load offset=36
   local.get $0
   i32.load offset=24
   call $~lib/internal/typedarray/TypedArray<u32>#__get
   i32.const 8
   i32.shl
   local.get $0
   i32.load
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=8
    local.tee $1
    i32.const 1
    i32.add
    i32.store offset=8
    local.get $1
   end
   call $~lib/internal/typedarray/TypedArray<u8>#__get
   i32.const 255
   i32.and
   i32.or
   call $~lib/internal/typedarray/TypedArray<u32>#__set
  end
 )
 (func $src/lzma/range-decoder/RangeDecoder#decodeDirectBits (; 65 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=36
  local.get $0
  i32.load offset=28
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  block $break|0
   loop $continue|0
    block
     local.get $0
     i32.load offset=36
     local.get $0
     i32.load offset=20
     local.get $0
     i32.load offset=36
     local.get $0
     i32.load offset=20
     call $~lib/internal/typedarray/TypedArray<u32>#__get
     i32.const 1
     i32.shr_u
     call $~lib/internal/typedarray/TypedArray<u32>#__set
     local.get $0
     i32.load offset=36
     local.get $0
     i32.load offset=24
     local.get $0
     i32.load offset=36
     local.get $0
     i32.load offset=24
     call $~lib/internal/typedarray/TypedArray<u32>#__get
     local.get $0
     i32.load offset=36
     local.get $0
     i32.load offset=20
     call $~lib/internal/typedarray/TypedArray<u32>#__get
     i32.sub
     call $~lib/internal/typedarray/TypedArray<u32>#__set
     local.get $0
     i32.load offset=36
     local.get $0
     i32.load offset=32
     i32.const 0
     local.get $0
     i32.load offset=36
     local.get $0
     i32.load offset=24
     call $~lib/internal/typedarray/TypedArray<u32>#__get
     i32.const 31
     i32.shr_u
     i32.sub
     call $~lib/internal/typedarray/TypedArray<u32>#__set
     local.get $0
     i32.load offset=36
     local.get $0
     i32.load offset=24
     local.get $0
     i32.load offset=36
     local.get $0
     i32.load offset=24
     call $~lib/internal/typedarray/TypedArray<u32>#__get
     local.get $0
     i32.load offset=36
     local.get $0
     i32.load offset=20
     call $~lib/internal/typedarray/TypedArray<u32>#__get
     local.get $0
     i32.load offset=36
     local.get $0
     i32.load offset=32
     call $~lib/internal/typedarray/TypedArray<u32>#__get
     i32.and
     i32.add
     call $~lib/internal/typedarray/TypedArray<u32>#__set
     local.get $0
     i32.load offset=36
     local.get $0
     i32.load offset=24
     call $~lib/internal/typedarray/TypedArray<u32>#__get
     local.get $0
     i32.load offset=36
     local.get $0
     i32.load offset=20
     call $~lib/internal/typedarray/TypedArray<u32>#__get
     i32.eq
     if
      local.get $0
      i32.const 1
      i32.store8 offset=4
     end
     local.get $0
     call $src/lzma/range-decoder/RangeDecoder#normalize
     local.get $0
     i32.load offset=36
     local.get $0
     i32.load offset=28
     local.get $0
     i32.load offset=36
     local.get $0
     i32.load offset=28
     call $~lib/internal/typedarray/TypedArray<u32>#__get
     i32.const 1
     i32.shl
     call $~lib/internal/typedarray/TypedArray<u32>#__set
     local.get $0
     i32.load offset=36
     local.get $0
     i32.load offset=28
     local.get $0
     i32.load offset=36
     local.get $0
     i32.load offset=28
     call $~lib/internal/typedarray/TypedArray<u32>#__get
     local.get $0
     i32.load offset=36
     local.get $0
     i32.load offset=32
     call $~lib/internal/typedarray/TypedArray<u32>#__get
     i32.const 1
     i32.add
     i32.add
     call $~lib/internal/typedarray/TypedArray<u32>#__set
    end
    local.get $1
    i32.const 1
    i32.sub
    local.tee $1
    br_if $continue|0
   end
  end
  local.get $0
  i32.load offset=36
  local.get $0
  i32.load offset=28
  call $~lib/internal/typedarray/TypedArray<u32>#__get
 )
 (func $src/lzma/bit-tree-decoder/BitTreeDecoder#reverseDecode (; 66 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  call $src/lzma/lzma/LZMA.BitTreeReverseDecode
 )
 (func $src/lzma/lzma-decoder/LzmaDecoder#decodeDistance (; 67 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.set $2
  local.get $2
  global.get $src/lzma/lzma/LZMA.kNumLenToPosStates
  i32.const 1
  i32.sub
  i32.gt_s
  if
   global.get $src/lzma/lzma/LZMA.kNumLenToPosStates
   i32.const 1
   i32.sub
   local.set $2
  end
  local.get $0
  i32.load offset=36
  local.get $2
  call $~lib/array/Array<BitTreeDecoder>#__get
  local.get $0
  i32.load offset=4
  call $src/lzma/bit-tree-decoder/BitTreeDecoder#decode
  local.set $3
  local.get $3
  i32.const 4
  i32.lt_s
  if
   local.get $3
   return
  end
  local.get $3
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.sub
  local.set $4
  local.get $0
  i32.const 2
  local.get $3
  i32.const 1
  i32.and
  i32.or
  local.get $4
  i32.shl
  i32.store offset=80
  local.get $3
  global.get $src/lzma/lzma/LZMA.kEndPosModelIndex
  i32.lt_s
  if
   local.get $0
   local.get $0
   i32.load offset=80
   local.get $0
   i32.load offset=44
   local.get $4
   local.get $0
   i32.load offset=4
   local.get $0
   i32.load offset=80
   local.get $3
   i32.sub
   call $src/lzma/lzma/LZMA.BitTreeReverseDecode
   i32.add
   i32.store offset=80
  else   
   local.get $0
   local.get $0
   i32.load offset=80
   local.get $0
   i32.load offset=4
   local.get $4
   global.get $src/lzma/lzma/LZMA.kNumAlignBits
   i32.sub
   call $src/lzma/range-decoder/RangeDecoder#decodeDirectBits
   global.get $src/lzma/lzma/LZMA.kNumAlignBits
   i32.shl
   i32.add
   i32.store offset=80
   local.get $0
   local.get $0
   i32.load offset=80
   local.get $0
   i32.load offset=40
   local.get $0
   i32.load offset=4
   call $src/lzma/bit-tree-decoder/BitTreeDecoder#reverseDecode
   i32.add
   i32.store offset=80
  end
  local.get $0
  i32.load offset=80
 )
 (func $src/lzma/out-window/OutWindow#checkDistance (; 68 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.le_s
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $0
   i32.load8_u offset=24
  end
 )
 (func $src/lzma/out-window/OutWindow#copyMatch (; 69 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  block $break|0
   loop $repeat|0
    local.get $2
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $0
    local.get $1
    call $src/lzma/out-window/OutWindow#getByte
    call $src/lzma/out-window/OutWindow#putByte
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $src/lzma/lzma-decoder/LzmaDecoder#decode (; 70 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $0
  call $src/lzma/lzma-decoder/LzmaDecoder#init
  local.get $0
  i32.load offset=4
  call $src/lzma/range-decoder/RangeDecoder#init
  local.get $1
  i32.const 0
  i32.ne
  if
   local.get $0
   i32.load offset=8
   i32.const 0
   local.get $2
   call $~lib/typedarray/Uint8Array#constructor
   i32.store offset=4
  end
  i32.const 0
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  i32.const 0
  local.set $6
  i32.const 0
  local.set $7
  block $break|0
   loop $repeat|0
    block $continue|0
     i32.const 1
     i32.eqz
     br_if $break|0
     block
      local.get $1
      i32.const 0
      i32.ne
      if (result i32)
       local.get $2
       i32.const 0
       i32.eq
      else       
       local.get $1
      end
      local.tee $8
      i32.const 0
      i32.ne
      if (result i32)
       local.get $0
       i32.load8_u
       i32.const 0
       i32.ne
       i32.eqz
      else       
       local.get $8
      end
      i32.const 0
      i32.ne
      if
       local.get $0
       i32.load offset=4
       call $src/lzma/range-decoder/RangeDecoder#isFinishedOK
       if
        global.get $src/lzma/lzma/LZMA.LZMA_RES_FINISHED_WITHOUT_MARKER
        return
       end
      end
      local.get $0
      i32.load offset=8
      i32.load
      i32.const 1
      local.get $0
      i32.load offset=16
      i32.shl
      i32.const 1
      i32.sub
      i32.and
      local.set $9
      local.get $0
      i32.load offset=4
      local.get $0
      i32.load offset=48
      local.get $7
      global.get $src/lzma/lzma/LZMA.kNumPosBitsMax
      i32.shl
      i32.const 255
      i32.and
      local.get $9
      i32.add
      call $src/lzma/range-decoder/RangeDecoder#decodeBit
      i32.const 0
      i32.eq
      if
       local.get $1
       i32.const 0
       i32.ne
       if (result i32)
        local.get $2
        i32.const 0
        i32.eq
       else        
        local.get $1
       end
       i32.const 0
       i32.ne
       if
        global.get $src/lzma/lzma/LZMA.LZMA_RES_ERROR
        return
       end
       local.get $0
       local.get $7
       local.get $3
       call $src/lzma/lzma-decoder/LzmaDecoder#decodeLiteral
       local.get $0
       local.get $7
       call $src/lzma/lzma-decoder/LzmaDecoder#updateState_Literal
       local.set $7
       local.get $2
       i32.const 1
       i32.sub
       local.set $2
       br $continue|0
      end
      local.get $0
      i32.load offset=4
      local.get $0
      i32.load offset=52
      local.get $7
      call $src/lzma/range-decoder/RangeDecoder#decodeBit
      i32.const 0
      i32.ne
      if
       local.get $1
       i32.const 0
       i32.ne
       if (result i32)
        local.get $2
        i32.const 0
        i32.eq
       else        
        local.get $1
       end
       i32.const 0
       i32.ne
       if
        global.get $src/lzma/lzma/LZMA.LZMA_RES_ERROR
        return
       end
       local.get $0
       i32.load offset=8
       call $src/lzma/out-window/OutWindow#isEmpty
       if
        global.get $src/lzma/lzma/LZMA.LZMA_RES_ERROR
        return
       end
       local.get $0
       i32.load offset=4
       local.get $0
       i32.load offset=56
       local.get $7
       call $src/lzma/range-decoder/RangeDecoder#decodeBit
       i32.const 0
       i32.eq
       if
        local.get $0
        i32.load offset=4
        local.get $0
        i32.load offset=68
        local.get $7
        global.get $src/lzma/lzma/LZMA.kNumPosBitsMax
        i32.shl
        i32.const 255
        i32.and
        local.get $9
        i32.add
        call $src/lzma/range-decoder/RangeDecoder#decodeBit
        i32.const 0
        i32.eq
        if
         local.get $0
         local.get $7
         call $src/lzma/lzma-decoder/LzmaDecoder#updateState_ShortRep
         local.set $7
         local.get $0
         i32.load offset=8
         local.get $0
         i32.load offset=8
         local.get $3
         i32.const 1
         i32.add
         call $src/lzma/out-window/OutWindow#getByte
         call $src/lzma/out-window/OutWindow#putByte
         local.get $2
         i32.const 1
         i32.sub
         local.set $2
         br $continue|0
        end
       else        
        local.get $0
        i32.load offset=4
        local.get $0
        i32.load offset=60
        local.get $7
        call $src/lzma/range-decoder/RangeDecoder#decodeBit
        i32.const 0
        i32.eq
        if
         local.get $4
         local.set $11
        else         
         local.get $0
         i32.load offset=4
         local.get $0
         i32.load offset=64
         local.get $7
         call $src/lzma/range-decoder/RangeDecoder#decodeBit
         i32.const 0
         i32.eq
         if
          local.get $5
          local.set $11
         else          
          local.get $6
          local.set $11
          local.get $5
          local.set $6
         end
         local.get $4
         local.set $5
        end
        local.get $3
        local.set $4
        local.get $11
        local.set $3
       end
       local.get $0
       i32.load offset=76
       local.get $0
       i32.load offset=4
       local.get $9
       call $src/lzma/len-decoder/LenDecoder#decode
       local.set $10
       local.get $0
       local.get $7
       call $src/lzma/lzma-decoder/LzmaDecoder#updateState_Rep
       local.set $7
      else       
       local.get $5
       local.set $6
       local.get $4
       local.set $5
       local.get $3
       local.set $4
       local.get $0
       i32.load offset=72
       local.get $0
       i32.load offset=4
       local.get $9
       call $src/lzma/len-decoder/LenDecoder#decode
       local.set $10
       local.get $0
       local.get $7
       call $src/lzma/lzma-decoder/LzmaDecoder#updateState_Match
       local.set $7
       local.get $0
       local.get $10
       call $src/lzma/lzma-decoder/LzmaDecoder#decodeDistance
       local.set $3
       local.get $3
       i32.const -1
       i32.eq
       if
        local.get $0
        i32.load offset=4
        call $src/lzma/range-decoder/RangeDecoder#isFinishedOK
        if (result i32)
         global.get $src/lzma/lzma/LZMA.LZMA_RES_FINISHED_WITH_MARKER
        else         
         global.get $src/lzma/lzma/LZMA.LZMA_RES_ERROR
        end
        return
       end
       local.get $1
       i32.const 0
       i32.ne
       if (result i32)
        local.get $2
        i32.const 0
        i32.eq
       else        
        local.get $1
       end
       i32.const 0
       i32.ne
       if
        global.get $src/lzma/lzma/LZMA.LZMA_RES_ERROR
        return
       end
       local.get $3
       local.get $0
       i32.load offset=24
       i32.ge_u
       local.tee $8
       if (result i32)
        local.get $8
       else        
        local.get $0
        i32.load offset=8
        local.get $3
        call $src/lzma/out-window/OutWindow#checkDistance
        i32.const 0
        i32.ne
        i32.eqz
       end
       if
        global.get $src/lzma/lzma/LZMA.LZMA_RES_ERROR
        return
       end
      end
      local.get $10
      global.get $src/lzma/lzma/LZMA.kMatchMinLen
      i32.add
      local.set $10
      i32.const 0
      local.set $12
      local.get $1
      i32.const 0
      i32.ne
      if (result i32)
       local.get $2
       local.get $10
       i32.lt_s
      else       
       local.get $1
      end
      i32.const 0
      i32.ne
      if
       local.get $2
       local.set $10
       i32.const 1
       local.set $12
      end
      local.get $0
      i32.load offset=8
      local.get $3
      i32.const 1
      i32.add
      local.get $10
      call $src/lzma/out-window/OutWindow#copyMatch
      local.get $2
      local.get $10
      i32.sub
      local.set $2
      local.get $12
      if
       global.get $src/lzma/lzma/LZMA.LZMA_RES_ERROR
       return
      end
     end
    end
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 0
 )
 (func $src/lzma/lzma/LZMA#decode (; 71 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  local.get $1
  i32.store offset=4
  i32.const 0
  i32.const 13
  call $~lib/typedarray/Uint8Array#constructor
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
    local.get $3
    i32.const 13
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $3
    local.get $1
    local.get $3
    call $~lib/internal/typedarray/TypedArray<u8>#__get
    i32.const 255
    i32.and
    call $~lib/internal/typedarray/TypedArray<u8>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  i32.load
  local.get $2
  call $src/lzma/lzma-decoder/LzmaDecoder#decodeProperties
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  block $break|1
   i32.const 0
   local.set $3
   loop $repeat|1
    local.get $3
    i32.const 8
    i32.lt_s
    i32.eqz
    br_if $break|1
    block
     local.get $2
     i32.const 5
     local.get $3
     i32.add
     call $~lib/internal/typedarray/TypedArray<u8>#__get
     i32.const 255
     i32.and
     local.set $6
     local.get $6
     i32.const 255
     i32.ne
     if
      i32.const 1
      local.set $5
     end
     local.get $4
     local.get $6
     i32.const 8
     local.get $3
     i32.mul
     i32.shl
     i32.or
     local.set $4
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $0
  i32.load
  local.get $5
  i32.eqz
  i32.store8
  local.get $0
  i32.load
  i32.load offset=4
  local.get $1
  i32.store
  local.get $0
  i32.load
  call $src/lzma/lzma-decoder/LzmaDecoder#create
  local.get $0
  i32.load
  local.get $5
  local.get $4
  call $src/lzma/lzma-decoder/LzmaDecoder#decode
  local.set $7
  local.get $7
  global.get $src/lzma/lzma/LZMA.LZMA_RES_ERROR
  i32.eq
  if
   i32.const 0
   i32.const 248
   i32.const 109
   i32.const 12
   call $~lib/env/abort
   unreachable
  else   
   local.get $7
   global.get $src/lzma/lzma/LZMA.LZMA_RES_FINISHED_WITHOUT_MARKER
   i32.eq
   if
    nop
   else    
    local.get $7
    global.get $src/lzma/lzma/LZMA.LZMA_RES_FINISHED_WITH_MARKER
    i32.eq
    if
     local.get $5
     if
      local.get $0
      i32.load
      i32.load offset=8
      i32.load offset=16
      local.get $4
      i32.ne
      if
       i32.const 0
       i32.const 248
       i32.const 115
       i32.const 20
       call $~lib/env/abort
       unreachable
      end
     end
    else     
     i32.const 0
     i32.const 248
     i32.const 121
     i32.const 12
     call $~lib/env/abort
     unreachable
    end
   end
  end
  local.get $0
  i32.load
  i32.load offset=4
  i32.load8_u offset=4
  i32.const 0
  i32.ne
  if
   nop
  end
  local.get $0
  i32.load
  i32.load offset=8
  i32.load offset=4
 )
 (func $src/index/decode (; 72 ;) (type $ii) (param $0 i32) (result i32)
  global.get $src/index/lzma
  local.get $0
  call $src/lzma/lzma/LZMA#decode
 )
 (func $start (; 73 ;) (type $_)
  call $start:src/index
 )
 (func $null (; 74 ;) (type $_)
 )
)
