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
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "memory" (memory $0 1))
 (data (i32.const 8) "\n\00\00\00u\00s\00e\00 \00s\00t\00r\00i\00c\00t")
 (data (i32.const 32) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 64) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 128) "\18\00\00\00s\00r\00c\00/\00l\00z\00m\00a\00/\00l\00z\00m\00a\00-\00d\00e\00c\00o\00d\00e\00r\00.\00t\00s")
 (data (i32.const 184) "\10\00\00\00s\00r\00c\00/\00l\00z\00m\00a\00/\00l\00z\00m\00a\00.\00t\00s")
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
 (global $src/lzma/lzma/LZMA.PROB_INIT_VAL (mut i32) (i32.const 0))
 (global $src/lzma/lzma/LZMA.kNumPosBitsMax (mut i32) (i32.const 4))
 (global $src/lzma/lzma/LZMA.kNumStates (mut i32) (i32.const 12))
 (global $src/lzma/lzma/LZMA.kNumLenToPosStates (mut i32) (i32.const 4))
 (global $src/lzma/lzma/LZMA.kNumAlignBits (mut i32) (i32.const 4))
 (global $src/lzma/lzma/LZMA.kEndPosModelIndex (mut i32) (i32.const 14))
 (global $src/lzma/lzma/LZMA.kNumFullDistances (mut i32) (i32.const 0))
 (global $src/lzma/lzma/LZMA.kMatchMinLen (mut i32) (i32.const 2))
 (global $src/index/lzma (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "decode" (func $src/index/decode))
 (start $start)
 (func $start:src/lzma/lzma (; 1 ;) (type $_)
  i32.const 224
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  i32.const 16777216
  global.set $src/lzma/range-decoder/RangeDecoder.kTopValue
  i32.const 4096
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
 (func $~lib/allocator/arena/__memory_allocate (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.tee $1
  local.get $0
  i32.const 1
  local.get $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const -8
  i32.and
  local.tee $2
  current_memory
  local.tee $3
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $3
   local.get $2
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $0
   local.get $3
   local.get $0
   i32.gt_s
   select
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $0
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $2
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 7
  i32.add
  i32.clz
  i32.sub
  i32.shl
  call $~lib/allocator/arena/__memory_allocate
  local.tee $1
  local.get $0
  i32.store
  local.get $1
 )
 (func $~lib/internal/memory/memset (; 4 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 0
  i32.store8
  local.get $0
  local.get $1
  i32.add
  i32.const 1
  i32.sub
  i32.const 0
  i32.store8
  local.get $1
  i32.const 2
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 1
  i32.add
  i32.const 0
  i32.store8
  local.get $0
  i32.const 2
  i32.add
  i32.const 0
  i32.store8
  local.get $0
  local.get $1
  i32.add
  local.tee $2
  i32.const 2
  i32.sub
  i32.const 0
  i32.store8
  local.get $2
  i32.const 3
  i32.sub
  i32.const 0
  i32.store8
  local.get $1
  i32.const 6
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 3
  i32.add
  i32.const 0
  i32.store8
  local.get $0
  local.get $1
  i32.add
  i32.const 4
  i32.sub
  i32.const 0
  i32.store8
  local.get $1
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
  local.tee $2
  local.get $0
  i32.add
  local.tee $0
  i32.const 0
  i32.store
  local.get $1
  local.get $2
  i32.sub
  i32.const -4
  i32.and
  local.tee $1
  local.get $0
  i32.add
  i32.const 4
  i32.sub
  i32.const 0
  i32.store
  local.get $1
  i32.const 8
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 4
  i32.add
  i32.const 0
  i32.store
  local.get $0
  i32.const 8
  i32.add
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.add
  local.tee $2
  i32.const 12
  i32.sub
  i32.const 0
  i32.store
  local.get $2
  i32.const 8
  i32.sub
  i32.const 0
  i32.store
  local.get $1
  i32.const 24
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 12
  i32.add
  i32.const 0
  i32.store
  local.get $0
  i32.const 16
  i32.add
  i32.const 0
  i32.store
  local.get $0
  i32.const 20
  i32.add
  i32.const 0
  i32.store
  local.get $0
  i32.const 24
  i32.add
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.add
  local.tee $2
  i32.const 28
  i32.sub
  i32.const 0
  i32.store
  local.get $2
  i32.const 24
  i32.sub
  i32.const 0
  i32.store
  local.get $2
  i32.const 20
  i32.sub
  i32.const 0
  i32.store
  local.get $2
  i32.const 16
  i32.sub
  i32.const 0
  i32.store
  local.get $0
  i32.const 4
  i32.and
  i32.const 24
  i32.add
  local.tee $2
  local.get $0
  i32.add
  local.set $0
  local.get $1
  local.get $2
  i32.sub
  local.set $1
  loop $continue|0
   local.get $1
   i32.const 32
   i32.ge_u
   if
    local.get $0
    i64.const 0
    i64.store
    local.get $0
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    local.get $0
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get $0
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    local.get $1
    i32.const 32
    i32.sub
    local.set $1
    local.get $0
    i32.const 32
    i32.add
    local.set $0
    br $continue|0
   end
  end
 )
 (func $~lib/array/Array<BitTreeDecoder>#constructor (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
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
  local.get $0
  i32.const 2
  i32.shl
  local.tee $3
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $2
  i32.const 8
  call $~lib/allocator/arena/__memory_allocate
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $2
  i32.const 8
  i32.add
  local.get $3
  call $~lib/internal/memory/memset
  local.get $1
 )
 (func $~lib/array/Array<u16>#constructor (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
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
  local.get $0
  i32.const 1
  i32.shl
  local.tee $3
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $2
  i32.const 8
  call $~lib/allocator/arena/__memory_allocate
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $2
  i32.const 8
  i32.add
  local.get $3
  call $~lib/internal/memory/memset
  local.get $1
 )
 (func $src/lzma/bit-tree-decoder/BitTreeDecoder#constructor (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 8
  call $~lib/allocator/arena/__memory_allocate
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  i32.const 1
  local.get $1
  i32.load offset=4
  i32.shl
  call $~lib/array/Array<u16>#constructor
  i32.store
  local.get $1
 )
 (func $~lib/internal/memory/memcpy (; 8 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $continue|0
   local.get $1
   i32.const 3
   i32.and
   local.get $2
   local.get $2
   select
   if
    local.get $0
    local.tee $4
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $3
    i32.const 1
    i32.add
    local.set $1
    local.get $4
    local.get $3
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $continue|1
    local.get $2
    i32.const 16
    i32.ge_u
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
     br $continue|1
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
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 8
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.get $1
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
      local.get $0
      i32.const 3
      i32.and
      local.tee $3
      i32.const 1
      i32.ne
      if
       local.get $3
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $3
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $5
      local.get $0
      local.get $1
      local.tee $3
      i32.load8_u
      i32.store8
      local.get $0
      i32.const 1
      i32.add
      local.tee $1
      local.set $0
      local.get $1
      local.get $3
      i32.const 1
      i32.add
      local.tee $1
      i32.load8_u
      i32.store8
      local.get $0
      i32.const 1
      i32.add
      local.tee $4
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $4
      local.get $3
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       if
        local.get $0
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.tee $3
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        i32.const 4
        i32.add
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.tee $5
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        i32.const 8
        i32.add
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.tee $3
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        i32.const 12
        i32.add
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.tee $5
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
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
        br $continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $5
     local.get $0
     local.get $1
     i32.load8_u
     i32.store8
     local.get $0
     i32.const 1
     i32.add
     local.tee $4
     i32.const 1
     i32.add
     local.set $0
     local.get $1
     i32.const 1
     i32.add
     local.tee $3
     i32.const 1
     i32.add
     local.set $1
     local.get $4
     local.get $3
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      if
       local.get $0
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.tee $3
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       i32.const 4
       i32.add
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.tee $5
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       i32.const 8
       i32.add
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.tee $3
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       i32.const 12
       i32.add
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.tee $5
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
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
       br $continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $5
    local.get $0
    local.tee $4
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $3
    i32.const 1
    i32.add
    local.set $1
    local.get $4
    local.get $3
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     if
      local.get $0
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.tee $3
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      i32.const 4
      i32.add
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.tee $5
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      i32.const 8
      i32.add
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.tee $3
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      i32.const 12
      i32.add
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.tee $5
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
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
      br $continue|5
     end
    end
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.get $1
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $1
   local.set $0
   local.get $1
   local.get $3
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   local.set $0
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   local.set $0
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   local.set $0
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   local.set $0
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   local.set $0
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   local.set $0
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   local.set $0
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   local.set $0
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   local.set $0
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   local.set $0
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   local.set $0
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   local.set $0
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   local.set $0
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.get $1
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $1
   local.set $0
   local.get $1
   local.get $3
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   local.set $0
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   local.set $0
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   local.set $0
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   local.set $0
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   local.set $0
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.get $1
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $1
   local.set $0
   local.get $1
   local.get $3
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   local.set $0
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/internal/memory/memmove (; 9 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  i32.eqz
  if
   local.get $0
   local.get $2
   i32.add
   local.get $1
   i32.le_u
   local.set $3
  end
  local.get $3
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
    loop $continue|0
     local.get $0
     i32.const 7
     i32.and
     if
      local.get $2
      i32.eqz
      if
       return
      end
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      local.get $0
      local.tee $4
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $4
      local.get $3
      i32.load8_u
      i32.store8
      br $continue|0
     end
    end
    loop $continue|1
     local.get $2
     i32.const 8
     i32.ge_u
     if
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
      br $continue|1
     end
    end
   end
   loop $continue|2
    local.get $2
    if
     local.get $0
     local.tee $4
     i32.const 1
     i32.add
     local.set $0
     local.get $1
     local.tee $3
     i32.const 1
     i32.add
     local.set $1
     local.get $4
     local.get $3
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $continue|2
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
    loop $continue|3
     local.get $0
     local.get $2
     i32.add
     i32.const 7
     i32.and
     if
      local.get $2
      i32.eqz
      if
       return
      end
      local.get $2
      i32.const 1
      i32.sub
      local.tee $2
      local.get $0
      i32.add
      local.get $1
      local.get $2
      i32.add
      i32.load8_u
      i32.store8
      br $continue|3
     end
    end
    loop $continue|4
     local.get $2
     i32.const 8
     i32.ge_u
     if
      local.get $2
      i32.const 8
      i32.sub
      local.tee $2
      local.get $0
      i32.add
      local.get $1
      local.get $2
      i32.add
      i64.load
      i64.store
      br $continue|4
     end
    end
   end
   loop $continue|5
    local.get $2
    if
     local.get $2
     i32.const 1
     i32.sub
     local.tee $2
     local.get $0
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
 )
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load
  local.tee $2
  i32.gt_s
  if
   local.get $1
   i32.const 1
   i32.const 32
   local.get $2
   i32.const 7
   i32.add
   i32.clz
   i32.sub
   i32.shl
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
    local.tee $3
    i32.const 8
    i32.add
    local.get $0
    i32.const 8
    i32.add
    local.get $2
    call $~lib/internal/memory/memmove
    local.get $3
    local.set $0
   end
   local.get $0
   i32.const 8
   i32.add
   local.get $2
   i32.add
   local.get $1
   local.get $2
   i32.sub
   call $~lib/internal/memory/memset
  else   
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.store
   end
  end
  local.get $0
 )
 (func $~lib/array/Array<BitTreeDecoder>#__set (; 11 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
  i32.load
  local.tee $3
  i32.load
  i32.const 2
  i32.shr_u
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
   local.get $0
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   local.tee $3
   i32.store
   local.get $0
   local.get $4
   i32.store offset=4
  end
  local.get $3
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store offset=8
 )
 (func $src/lzma/bit-tree-decoder/BitTreeDecoder.constructArray (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/array/Array<BitTreeDecoder>#constructor
  local.set $3
  loop $repeat|0
   block $break|0
    local.get $2
    local.get $1
    i32.ge_s
    br_if $break|0
    local.get $3
    local.get $2
    local.get $0
    call $src/lzma/bit-tree-decoder/BitTreeDecoder#constructor
    call $~lib/array/Array<BitTreeDecoder>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
   end
  end
  local.get $3
 )
 (func $src/lzma/len-decoder/LenDecoder#constructor (; 13 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 16
  call $~lib/allocator/arena/__memory_allocate
  local.tee $0
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
  i32.const 8
  call $src/lzma/bit-tree-decoder/BitTreeDecoder#constructor
  i32.store offset=12
  local.get $0
 )
 (func $src/lzma/range-decoder/RangeDecoder#constructor (; 14 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 44
  call $~lib/allocator/arena/__memory_allocate
  local.tee $0
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
  i32.const 13
  i32.store offset=8
  local.get $0
 )
 (func $src/lzma/out-window/OutWindow#constructor (; 15 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 25
  call $~lib/allocator/arena/__memory_allocate
  local.tee $0
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
  i32.const 0
  i32.store offset=16
  local.get $0
 )
 (func $src/lzma/lzma-decoder/LzmaDecoder#constructor (; 16 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 112
  call $~lib/allocator/arena/__memory_allocate
  local.tee $0
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
  i32.const 6
  global.get $src/lzma/lzma/LZMA.kNumLenToPosStates
  call $src/lzma/bit-tree-decoder/BitTreeDecoder.constructArray
  i32.store offset=36
  local.get $0
  global.get $src/lzma/lzma/LZMA.kNumAlignBits
  call $src/lzma/bit-tree-decoder/BitTreeDecoder#constructor
  i32.store offset=40
  local.get $0
  global.get $src/lzma/lzma/LZMA.kNumFullDistances
  i32.const 1
  i32.add
  global.get $src/lzma/lzma/LZMA.kEndPosModelIndex
  i32.sub
  call $~lib/array/Array<u16>#constructor
  i32.store offset=44
  local.get $0
  global.get $src/lzma/lzma/LZMA.kNumStates
  global.get $src/lzma/lzma/LZMA.kNumPosBitsMax
  i32.shl
  call $~lib/array/Array<u16>#constructor
  i32.store offset=48
  local.get $0
  global.get $src/lzma/lzma/LZMA.kNumStates
  call $~lib/array/Array<u16>#constructor
  i32.store offset=52
  local.get $0
  global.get $src/lzma/lzma/LZMA.kNumStates
  call $~lib/array/Array<u16>#constructor
  i32.store offset=56
  local.get $0
  global.get $src/lzma/lzma/LZMA.kNumStates
  call $~lib/array/Array<u16>#constructor
  i32.store offset=60
  local.get $0
  global.get $src/lzma/lzma/LZMA.kNumStates
  call $~lib/array/Array<u16>#constructor
  i32.store offset=64
  local.get $0
  global.get $src/lzma/lzma/LZMA.kNumStates
  global.get $src/lzma/lzma/LZMA.kNumPosBitsMax
  i32.shl
  call $~lib/array/Array<u16>#constructor
  i32.store offset=68
  local.get $0
  call $src/lzma/len-decoder/LenDecoder#constructor
  i32.store offset=72
  local.get $0
  call $src/lzma/len-decoder/LenDecoder#constructor
  i32.store offset=76
  local.get $0
  call $src/lzma/range-decoder/RangeDecoder#constructor
  i32.store offset=4
  local.get $0
  call $src/lzma/out-window/OutWindow#constructor
  i32.store offset=8
  local.get $0
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#constructor (; 17 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 64
   i32.const 23
   i32.const 34
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.tee $2
  i32.const 8
  i32.add
  local.get $1
  call $~lib/internal/memory/memset
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/allocator/arena/__memory_allocate
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
  local.get $2
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  local.get $0
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#__get (; 19 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 64
   i32.const 39
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  local.get $0
  i32.load
  i32.add
  i32.add
  i32.load8_u offset=8
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#__set (; 20 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 64
   i32.const 50
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  local.get $0
  i32.load
  i32.add
  i32.add
  local.get $2
  i32.store8 offset=8
 )
 (func $src/lzma/lzma-decoder/LzmaDecoder#decodeProperties (; 21 ;) (type $ii_) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $2
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
  i32.const 225
  i32.ge_u
  if
   i32.const 0
   i32.const 128
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
  i32.const 0
  local.set $2
  loop $repeat|0
   block $break|0
    local.get $2
    i32.const 4
    i32.ge_u
    br_if $break|0
    local.get $0
    local.get $0
    i32.load8_u offset=28
    local.get $1
    local.get $2
    i32.const 1
    i32.add
    local.tee $3
    i32.const 255
    i32.and
    call $~lib/internal/typedarray/TypedArray<u8>#__get
    local.get $2
    i32.const 3
    i32.shl
    i32.shl
    i32.or
    i32.store8 offset=28
    local.get $3
    local.set $2
    br $repeat|0
   end
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
 (func $src/lzma/out-window/OutWindow#create (; 22 ;) (type $ii_) (param $0 i32) (param $1 i32)
  local.get $0
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
 (func $src/lzma/lzma-decoder/LzmaDecoder#create (; 23 ;) (type $i_) (param $0 i32)
  local.get $0
  i32.load offset=8
  local.get $0
  i32.load offset=24
  call $src/lzma/out-window/OutWindow#create
  local.get $0
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
 (func $~lib/array/Array<u16>#__set (; 24 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
  i32.load
  local.tee $3
  i32.load
  i32.const 1
  i32.shr_u
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
   local.get $0
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   local.tee $3
   i32.store
   local.get $0
   local.get $4
   i32.store offset=4
  end
  local.get $3
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16 offset=8
 )
 (func $src/lzma/lzma-decoder/LzmaDecoder#initLiterals (; 25 ;) (type $i_) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 768
  local.get $0
  i32.load offset=12
  local.get $0
  i32.load8_u offset=20
  i32.add
  i32.shl
  local.set $2
  loop $repeat|0
   block $break|0
    local.get $1
    local.get $2
    i32.ge_s
    br_if $break|0
    local.get $0
    i32.load offset=32
    local.get $1
    global.get $src/lzma/lzma/LZMA.PROB_INIT_VAL
    call $~lib/array/Array<u16>#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
 )
 (func $src/lzma/lzma/LZMA.INIT_PROBS (; 26 ;) (type $i_) (param $0 i32)
  (local $1 i32)
  block $break|0
   loop $repeat|0
    local.get $1
    local.get $0
    i32.load offset=4
    i32.ge_s
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
 (func $src/lzma/bit-tree-decoder/BitTreeDecoder#init (; 27 ;) (type $i_) (param $0 i32)
  local.get $0
  i32.load
  call $src/lzma/lzma/LZMA.INIT_PROBS
 )
 (func $src/lzma/lzma-decoder/LzmaDecoder#initDist (; 28 ;) (type $i_) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  loop $repeat|0
   local.get $1
   global.get $src/lzma/lzma/LZMA.kNumLenToPosStates
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.load offset=36
    i32.load
    local.tee $2
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 2
     i32.shl
     local.get $2
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    call $src/lzma/bit-tree-decoder/BitTreeDecoder#init
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $0
  i32.load offset=40
  call $src/lzma/bit-tree-decoder/BitTreeDecoder#init
  local.get $0
  i32.load offset=44
  call $src/lzma/lzma/LZMA.INIT_PROBS
 )
 (func $src/lzma/len-decoder/LenDecoder#init (; 29 ;) (type $i_) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 2
  call $~lib/array/Array<u16>#constructor
  local.tee $1
  i32.load
  global.get $src/lzma/lzma/LZMA.PROB_INIT_VAL
  i32.store16 offset=8
  local.get $1
  i32.load
  i32.const 2
  i32.add
  global.get $src/lzma/lzma/LZMA.PROB_INIT_VAL
  i32.store16 offset=8
  local.get $0
  local.get $1
  i32.store
  local.get $0
  i32.load offset=12
  call $src/lzma/bit-tree-decoder/BitTreeDecoder#init
  i32.const 0
  local.set $1
  loop $repeat|0
   local.get $1
   i32.const 1
   global.get $src/lzma/lzma/LZMA.kNumPosBitsMax
   i32.shl
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.load offset=4
    i32.load
    local.tee $2
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 2
     i32.shl
     local.get $2
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    call $src/lzma/bit-tree-decoder/BitTreeDecoder#init
    local.get $1
    local.get $0
    i32.load offset=8
    i32.load
    local.tee $2
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 2
     i32.shl
     local.get $2
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    call $src/lzma/bit-tree-decoder/BitTreeDecoder#init
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
 )
 (func $src/lzma/lzma-decoder/LzmaDecoder#init (; 30 ;) (type $i_) (param $0 i32)
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
 (func $~lib/internal/typedarray/TypedArray<u32>#constructor (; 31 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 268435454
  i32.gt_u
  if
   i32.const 0
   i32.const 64
   i32.const 23
   i32.const 34
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.tee $1
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.tee $2
  i32.const 8
  i32.add
  local.get $1
  call $~lib/internal/memory/memset
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/allocator/arena/__memory_allocate
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
  local.get $2
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/internal/typedarray/TypedArray<u32>#__set (; 32 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 64
   i32.const 50
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.add
  local.get $2
  i32.store offset=8
 )
 (func $~lib/internal/typedarray/TypedArray<u32>#__get (; 33 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 64
   i32.const 39
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.add
  i32.load offset=8
 )
 (func $src/lzma/range-decoder/RangeDecoder#init (; 34 ;) (type $i_) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u32>#constructor
  i32.store offset=36
  local.get $0
  i32.const 4
  call $~lib/array/Array<u16>#constructor
  i32.store offset=40
  local.get $0
  i32.const 0
  i32.store8 offset=4
  local.get $0
  i32.load
  local.set $1
  local.get $0
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.const 1
  i32.add
  i32.store offset=8
  local.get $1
  local.get $2
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
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
  i32.const 0
  local.set $1
  loop $repeat|0
   local.get $1
   i32.const 4
   i32.lt_s
   if
    local.get $0
    i32.load offset=36
    local.set $3
    local.get $0
    i32.load offset=24
    local.set $4
    local.get $0
    i32.load offset=36
    local.get $0
    i32.load offset=24
    call $~lib/internal/typedarray/TypedArray<u32>#__get
    i32.const 8
    i32.shl
    local.set $5
    local.get $0
    i32.load
    local.set $6
    local.get $0
    local.get $0
    i32.load offset=8
    local.tee $2
    i32.const 1
    i32.add
    i32.store offset=8
    local.get $3
    local.get $4
    local.get $6
    local.get $2
    call $~lib/internal/typedarray/TypedArray<u8>#__get
    i32.const 255
    i32.and
    local.get $5
    i32.or
    call $~lib/internal/typedarray/TypedArray<u32>#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
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
 (func $src/lzma/range-decoder/RangeDecoder#isFinishedOK (; 35 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=36
  local.get $0
  i32.load offset=24
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.eqz
 )
 (func $src/lzma/range-decoder/RangeDecoder#decodeBit (; 36 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=40
  i32.const 0
  local.get $2
  local.get $1
  i32.load
  local.tee $4
  i32.load
  i32.const 1
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 1
   i32.shl
   local.get $4
   i32.add
   i32.load16_u offset=8
  else   
   unreachable
  end
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
  i32.const 0
  local.get $0
  i32.load offset=40
  i32.load
  local.tee $3
  i32.load
  i32.const 1
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $3
   i32.load16_u offset=8
  else   
   unreachable
  end
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
   i32.const 0
   local.get $0
   i32.load offset=40
   i32.load
   local.tee $3
   i32.load
   i32.const 1
   i32.shr_u
   i32.lt_u
   if (result i32)
    local.get $3
    i32.load16_u offset=8
   else    
    unreachable
   end
   i32.const 2048
   i32.const 0
   local.get $0
   i32.load offset=40
   i32.load
   local.tee $4
   i32.load
   i32.const 1
   i32.shr_u
   i32.lt_u
   if (result i32)
    local.get $4
    i32.load16_u offset=8
   else    
    unreachable
   end
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
   i32.const 0
   local.get $0
   i32.load offset=40
   i32.load
   local.tee $3
   i32.load
   i32.const 1
   i32.shr_u
   i32.lt_u
   if (result i32)
    local.get $3
    i32.load16_u offset=8
   else    
    unreachable
   end
   i32.const 0
   local.get $0
   i32.load offset=40
   i32.load
   local.tee $4
   i32.load
   i32.const 1
   i32.shr_u
   i32.lt_u
   if (result i32)
    local.get $4
    i32.load16_u offset=8
   else    
    unreachable
   end
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
  i32.const 0
  local.get $0
  i32.load offset=40
  i32.load
  local.tee $3
  i32.load
  i32.const 1
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $3
   i32.load16_u offset=8
  else   
   unreachable
  end
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
   local.set $1
   local.get $0
   i32.load offset=36
   i32.const 1
   call $~lib/internal/typedarray/TypedArray<u32>#__get
   i32.const 8
   i32.shl
   local.set $2
   local.get $0
   i32.load
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=8
   local.tee $4
   i32.const 1
   i32.add
   i32.store offset=8
   local.get $1
   i32.const 1
   local.get $3
   local.get $4
   call $~lib/internal/typedarray/TypedArray<u8>#__get
   i32.const 255
   i32.and
   local.get $2
   i32.or
   call $~lib/internal/typedarray/TypedArray<u32>#__set
  end
  i32.const 1
  local.get $0
  i32.load offset=40
  i32.load
  local.tee $0
  i32.load
  i32.const 1
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 2
   i32.add
   i32.load16_u offset=8
  else   
   unreachable
  end
  i32.const 65535
  i32.and
 )
 (func $src/lzma/out-window/OutWindow#getByte (; 37 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.load offset=12
   local.get $0
   i32.load offset=20
   local.get $1
   i32.sub
   i32.add
  end
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
 )
 (func $src/lzma/out-window/OutWindow#putByte (; 38 ;) (type $ii_) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 1
  i32.add
  i32.store offset=12
  local.get $2
  local.get $3
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
  local.set $2
  local.get $0
  local.get $0
  i32.load offset=16
  local.tee $3
  i32.const 1
  i32.add
  i32.store offset=16
  local.get $2
  local.get $3
  local.get $1
  call $~lib/internal/typedarray/TypedArray<u8>#__set
 )
 (func $src/lzma/lzma-decoder/LzmaDecoder#decodeLiteral (; 39 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 0
  i32.store offset=104
  local.get $0
  i32.load offset=8
  local.tee $4
  i32.load offset=12
  i32.eqz
  local.tee $3
  if (result i32)
   local.get $4
   i32.load8_u offset=24
   i32.eqz
  else   
   local.get $3
  end
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
  local.get $0
  i32.load offset=108
  i32.const 768
  i32.mul
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
   loop $continue|0
    block $break|0
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
     local.get $0
     i32.load offset=100
     local.get $0
     i32.load offset=88
     i32.const 1
     i32.add
     i32.const 8
     i32.shl
     local.get $3
     i32.add
     i32.add
     call $src/lzma/range-decoder/RangeDecoder#decodeBit
     i32.store offset=96
     local.get $0
     local.get $0
     i32.load offset=96
     local.get $0
     i32.load offset=100
     i32.const 1
     i32.shl
     i32.or
     i32.store offset=100
     local.get $0
     i32.load offset=88
     local.get $0
     i32.load offset=96
     i32.ne
     br_if $break|0
     local.get $0
     i32.load offset=100
     i32.const 256
     i32.lt_s
     br_if $continue|0
    end
   end
  end
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
    local.get $0
    i32.load offset=100
    local.get $3
    i32.add
    call $src/lzma/range-decoder/RangeDecoder#decodeBit
    i32.or
    i32.store offset=100
    br $continue|1
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
 (func $src/lzma/bit-tree-decoder/BitTreeDecoder#decode (; 40 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1
  local.set $2
  loop $repeat|0
   block $break|0
    local.get $3
    local.get $0
    i32.load offset=4
    i32.ge_s
    br_if $break|0
    local.get $1
    local.get $0
    i32.load
    local.get $2
    call $src/lzma/range-decoder/RangeDecoder#decodeBit
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.set $2
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $repeat|0
   end
  end
  local.get $2
  i32.const 1
  local.get $0
  i32.load offset=4
  i32.shl
  i32.sub
 )
 (func $src/lzma/len-decoder/LenDecoder#decode (; 41 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  local.get $0
  i32.load
  i32.const 0
  call $src/lzma/range-decoder/RangeDecoder#decodeBit
  i32.eqz
  if
   local.get $2
   local.get $0
   i32.load offset=4
   i32.load
   local.tee $0
   i32.load
   i32.const 2
   i32.shr_u
   i32.lt_u
   if (result i32)
    local.get $2
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=8
   else    
    unreachable
   end
   local.get $1
   call $src/lzma/bit-tree-decoder/BitTreeDecoder#decode
   return
  end
  local.get $1
  local.get $0
  i32.load
  i32.const 1
  call $src/lzma/range-decoder/RangeDecoder#decodeBit
  i32.eqz
  if
   local.get $2
   local.get $0
   i32.load offset=8
   i32.load
   local.tee $0
   i32.load
   i32.const 2
   i32.shr_u
   i32.lt_u
   if (result i32)
    local.get $2
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=8
   else    
    unreachable
   end
   local.get $1
   call $src/lzma/bit-tree-decoder/BitTreeDecoder#decode
   i32.const 8
   i32.add
   return
  end
  local.get $0
  i32.load offset=12
  local.get $1
  call $src/lzma/bit-tree-decoder/BitTreeDecoder#decode
  i32.const 16
  i32.add
 )
 (func $src/lzma/lzma/LZMA.BitTreeReverseDecode (; 42 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 1
  local.set $5
  loop $repeat|0
   block $break|0
    local.get $4
    local.get $1
    i32.ge_s
    br_if $break|0
    local.get $2
    local.get $0
    local.get $3
    local.get $5
    i32.add
    call $src/lzma/range-decoder/RangeDecoder#decodeBit
    local.tee $7
    local.get $5
    i32.const 1
    i32.shl
    i32.add
    local.set $5
    local.get $7
    local.get $4
    i32.shl
    local.get $6
    i32.or
    local.set $6
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $repeat|0
   end
  end
  local.get $6
 )
 (func $src/lzma/range-decoder/RangeDecoder#normalize (; 43 ;) (type $i_) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
   local.set $1
   local.get $0
   i32.load offset=24
   local.set $2
   local.get $0
   i32.load offset=36
   local.get $0
   i32.load offset=24
   call $~lib/internal/typedarray/TypedArray<u32>#__get
   i32.const 8
   i32.shl
   local.set $3
   local.get $0
   i32.load
   local.set $4
   local.get $0
   local.get $0
   i32.load offset=8
   local.tee $0
   i32.const 1
   i32.add
   i32.store offset=8
   local.get $1
   local.get $2
   local.get $4
   local.get $0
   call $~lib/internal/typedarray/TypedArray<u8>#__get
   i32.const 255
   i32.and
   local.get $3
   i32.or
   call $~lib/internal/typedarray/TypedArray<u32>#__set
  end
 )
 (func $src/lzma/range-decoder/RangeDecoder#decodeDirectBits (; 44 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=36
  local.get $0
  i32.load offset=28
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  loop $continue|0
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
   local.get $1
   i32.const 1
   i32.sub
   local.tee $1
   br_if $continue|0
  end
  local.get $0
  i32.load offset=36
  local.get $0
  i32.load offset=28
  call $~lib/internal/typedarray/TypedArray<u32>#__get
 )
 (func $src/lzma/lzma-decoder/LzmaDecoder#decodeDistance (; 45 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $src/lzma/lzma/LZMA.kNumLenToPosStates
  i32.const 1
  i32.sub
  local.tee $2
  local.get $1
  local.get $1
  local.get $2
  i32.gt_s
  select
  local.tee $2
  local.get $0
  i32.load offset=36
  i32.load
  local.tee $1
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 2
   i32.shl
   local.get $1
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  local.get $0
  i32.load offset=4
  call $src/lzma/bit-tree-decoder/BitTreeDecoder#decode
  local.tee $1
  i32.const 4
  i32.lt_s
  if
   local.get $1
   return
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.and
  i32.const 2
  i32.or
  local.get $1
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.sub
  local.tee $2
  i32.shl
  i32.store offset=80
  local.get $1
  global.get $src/lzma/lzma/LZMA.kEndPosModelIndex
  i32.lt_s
  if
   local.get $0
   local.get $0
   i32.load offset=80
   local.get $0
   i32.load offset=44
   local.get $2
   local.get $0
   i32.load offset=4
   local.get $0
   i32.load offset=80
   local.get $1
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
   local.get $2
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
   local.tee $1
   i32.load
   local.get $1
   i32.load offset=4
   local.get $0
   i32.load offset=4
   i32.const 0
   call $src/lzma/lzma/LZMA.BitTreeReverseDecode
   i32.add
   i32.store offset=80
  end
  local.get $0
  i32.load offset=80
 )
 (func $src/lzma/out-window/OutWindow#copyMatch (; 46 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  loop $repeat|0
   local.get $2
   i32.const 0
   i32.le_s
   i32.eqz
   if
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
   end
  end
 )
 (func $src/lzma/lzma-decoder/LzmaDecoder#decode (; 47 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  call $src/lzma/lzma-decoder/LzmaDecoder#init
  local.get $0
  i32.load offset=4
  call $src/lzma/range-decoder/RangeDecoder#init
  local.get $1
  if
   local.get $0
   i32.load offset=8
   local.get $2
   call $~lib/typedarray/Uint8Array#constructor
   i32.store offset=4
  end
  loop $repeat|0
   block $folding-inner0
    local.get $2
    i32.eqz
    local.get $1
    local.get $1
    select
    local.tee $4
    if (result i32)
     local.get $0
     i32.load8_u
     i32.eqz
    else     
     local.get $4
    end
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
    i32.load offset=4
    local.get $0
    i32.load offset=48
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
    local.tee $5
    local.get $3
    global.get $src/lzma/lzma/LZMA.kNumPosBitsMax
    i32.shl
    i32.const 255
    i32.and
    i32.add
    call $src/lzma/range-decoder/RangeDecoder#decodeBit
    i32.eqz
    if
     local.get $2
     i32.eqz
     local.get $1
     local.get $1
     select
     br_if $folding-inner0
     local.get $0
     local.get $3
     local.get $6
     call $src/lzma/lzma-decoder/LzmaDecoder#decodeLiteral
     local.get $3
     i32.const 255
     i32.and
     i32.const 4
     i32.lt_u
     if (result i32)
      i32.const 0
     else      
      local.get $3
      i32.const 3
      i32.sub
      local.get $3
      i32.const 6
      i32.sub
      local.get $3
      i32.const 255
      i32.and
      i32.const 10
      i32.lt_u
      select
     end
     local.set $3
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $repeat|0
    end
    local.get $0
    i32.load offset=4
    local.get $0
    i32.load offset=52
    local.get $3
    call $src/lzma/range-decoder/RangeDecoder#decodeBit
    if
     local.get $2
     i32.eqz
     local.get $1
     local.get $1
     select
     br_if $folding-inner0
     local.get $0
     i32.load offset=8
     local.tee $7
     i32.load offset=12
     i32.eqz
     local.tee $4
     if (result i32)
      local.get $7
      i32.load8_u offset=24
      i32.eqz
     else      
      local.get $4
     end
     br_if $folding-inner0
     local.get $0
     i32.load offset=4
     local.get $0
     i32.load offset=56
     local.get $3
     call $src/lzma/range-decoder/RangeDecoder#decodeBit
     if
      local.get $0
      i32.load offset=4
      local.get $0
      i32.load offset=60
      local.get $3
      call $src/lzma/range-decoder/RangeDecoder#decodeBit
      if
       local.get $0
       i32.load offset=4
       local.get $0
       i32.load offset=64
       local.get $3
       call $src/lzma/range-decoder/RangeDecoder#decodeBit
       if
        local.get $10
        local.set $4
        local.get $8
        local.set $10
       else        
        local.get $8
        local.set $4
       end
       local.get $9
       local.set $8
      else       
       local.get $9
       local.set $4
      end
      local.get $6
      local.set $9
      local.get $4
      local.set $6
     else      
      local.get $0
      i32.load offset=4
      local.get $0
      i32.load offset=68
      local.get $3
      global.get $src/lzma/lzma/LZMA.kNumPosBitsMax
      i32.shl
      i32.const 255
      i32.and
      local.get $5
      i32.add
      call $src/lzma/range-decoder/RangeDecoder#decodeBit
      i32.eqz
      if
       i32.const 9
       i32.const 11
       local.get $3
       i32.const 255
       i32.and
       i32.const 7
       i32.lt_u
       select
       local.set $3
       local.get $0
       i32.load offset=8
       local.get $0
       i32.load offset=8
       local.get $6
       i32.const 1
       i32.add
       call $src/lzma/out-window/OutWindow#getByte
       call $src/lzma/out-window/OutWindow#putByte
       local.get $2
       i32.const 1
       i32.sub
       local.set $2
       br $repeat|0
      end
     end
     local.get $0
     i32.load offset=76
     local.get $0
     i32.load offset=4
     local.get $5
     call $src/lzma/len-decoder/LenDecoder#decode
     local.set $5
     i32.const 8
     i32.const 11
     local.get $3
     i32.const 255
     i32.and
     i32.const 7
     i32.lt_u
     select
     local.set $3
    else     
     local.get $8
     local.set $10
     local.get $9
     local.set $8
     local.get $6
     local.set $9
     i32.const 7
     i32.const 10
     local.get $3
     i32.const 255
     i32.and
     i32.const 7
     i32.lt_u
     select
     local.set $3
     local.get $0
     local.get $0
     i32.load offset=72
     local.get $0
     i32.load offset=4
     local.get $5
     call $src/lzma/len-decoder/LenDecoder#decode
     local.tee $5
     call $src/lzma/lzma-decoder/LzmaDecoder#decodeDistance
     local.tee $6
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
     local.get $2
     i32.eqz
     local.get $1
     local.get $1
     select
     br_if $folding-inner0
     local.get $6
     local.get $0
     i32.load offset=24
     i32.ge_u
     local.tee $4
     if (result i32)
      local.get $4
     else      
      local.get $6
      local.get $0
      i32.load offset=8
      local.tee $7
      i32.load offset=12
      i32.le_s
      local.tee $4
      if (result i32)
       local.get $4
      else       
       local.get $7
       i32.load8_u offset=24
      end
      i32.eqz
     end
     br_if $folding-inner0
    end
    i32.const 0
    local.set $4
    local.get $0
    i32.load offset=8
    local.set $7
    local.get $6
    i32.const 1
    i32.add
    local.set $11
    local.get $2
    global.get $src/lzma/lzma/LZMA.kMatchMinLen
    local.get $5
    i32.add
    local.tee $5
    i32.lt_s
    local.get $1
    local.get $1
    select
    if
     local.get $2
     local.set $5
     i32.const 1
     local.set $4
    end
    local.get $7
    local.get $11
    local.get $5
    call $src/lzma/out-window/OutWindow#copyMatch
    local.get $2
    local.get $5
    i32.sub
    local.set $2
    local.get $4
    i32.eqz
    br_if $repeat|0
   end
  end
  global.get $src/lzma/lzma/LZMA.LZMA_RES_ERROR
 )
 (func $src/lzma/lzma/LZMA#decode (; 48 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  i32.store offset=4
  i32.const 13
  call $~lib/typedarray/Uint8Array#constructor
  local.set $5
  loop $repeat|0
   block $break|0
    local.get $2
    i32.const 13
    i32.ge_s
    br_if $break|0
    local.get $5
    local.get $2
    local.get $1
    local.get $2
    call $~lib/internal/typedarray/TypedArray<u8>#__get
    i32.const 255
    i32.and
    call $~lib/internal/typedarray/TypedArray<u8>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
   end
  end
  local.get $0
  i32.load
  local.get $5
  call $src/lzma/lzma-decoder/LzmaDecoder#decodeProperties
  i32.const 0
  local.set $2
  loop $repeat|1
   block $break|1
    local.get $2
    i32.const 8
    i32.ge_s
    br_if $break|1
    local.get $5
    local.get $2
    i32.const 5
    i32.add
    call $~lib/internal/typedarray/TypedArray<u8>#__get
    i32.const 255
    i32.and
    local.tee $6
    i32.const 255
    i32.ne
    if
     i32.const 1
     local.set $3
    end
    local.get $6
    local.get $2
    i32.const 3
    i32.shl
    i32.shl
    local.get $4
    i32.or
    local.set $4
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|1
   end
  end
  local.get $0
  i32.load
  local.get $3
  i32.eqz
  i32.store8
  local.get $0
  i32.load
  i32.load offset=4
  local.get $1
  i32.store
  block
   local.get $0
   i32.load
   call $src/lzma/lzma-decoder/LzmaDecoder#create
  end
  local.get $0
  i32.load
  local.get $3
  local.get $4
  call $src/lzma/lzma-decoder/LzmaDecoder#decode
  local.tee $1
  global.get $src/lzma/lzma/LZMA.LZMA_RES_ERROR
  i32.eq
  if
   i32.const 0
   i32.const 184
   i32.const 91
   i32.const 12
   call $~lib/env/abort
   unreachable
  else   
   local.get $1
   global.get $src/lzma/lzma/LZMA.LZMA_RES_FINISHED_WITHOUT_MARKER
   i32.ne
   if
    global.get $src/lzma/lzma/LZMA.LZMA_RES_FINISHED_WITH_MARKER
    local.get $1
    i32.eq
    if
     local.get $3
     if
      local.get $0
      i32.load
      i32.load offset=8
      i32.load offset=16
      local.get $4
      i32.ne
      if
       i32.const 0
       i32.const 184
       i32.const 97
       i32.const 20
       call $~lib/env/abort
       unreachable
      end
     end
    else     
     i32.const 0
     i32.const 184
     i32.const 103
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
  drop
  local.get $0
  i32.load
  i32.load offset=8
  i32.load offset=4
 )
 (func $src/index/decode (; 49 ;) (type $ii) (param $0 i32) (result i32)
  global.get $src/index/lzma
  local.get $0
  call $src/lzma/lzma/LZMA#decode
 )
 (func $start (; 50 ;) (type $_)
  (local $0 i32)
  call $start:src/lzma/lzma
  i32.const 8
  call $~lib/allocator/arena/__memory_allocate
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  call $src/lzma/lzma-decoder/LzmaDecoder#constructor
  i32.store
  local.get $0
  global.set $src/index/lzma
 )
 (func $null (; 51 ;) (type $_)
  nop
 )
)
