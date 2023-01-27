(module
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (param i32 i32)))
  (type (;6;) (func (param i32 i32 i32)))
  (type (;7;) (func (param i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32 i32)))
  (type (;10;) (func (param i32 i64)))
  (type (;11;) (func (param i32 i32 i32 i64 i32)))
  (type (;12;) (func (result i64)))
  (type (;13;) (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i64)))
  (type (;15;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;16;) (func (param i32 i32 i32 i32 i32)))
  (import "env" "signalError" (func (;0;) (type 5)))
  (import "env" "bigIntSetInt64" (func (;1;) (type 10)))
  (import "env" "mBufferNew" (func (;2;) (type 3)))
  (import "env" "mBufferAppend" (func (;3;) (type 1)))
  (import "env" "mBufferEq" (func (;4;) (type 1)))
  (import "env" "bigIntAdd" (func (;5;) (type 6)))
  (import "env" "mBufferAppendBytes" (func (;6;) (type 7)))
  (import "env" "managedMultiTransferESDTNFTExecute" (func (;7;) (type 8)))
  (import "env" "managedTransferValueExecute" (func (;8;) (type 8)))
  (import "env" "managedCaller" (func (;9;) (type 4)))
  (import "env" "managedSCAddress" (func (;10;) (type 4)))
  (import "env" "bigIntGetExternalBalance" (func (;11;) (type 5)))
  (import "env" "mBufferGetLength" (func (;12;) (type 2)))
  (import "env" "mBufferGetBytes" (func (;13;) (type 1)))
  (import "env" "bigIntGetESDTExternalBalance" (func (;14;) (type 11)))
  (import "env" "managedOwnerAddress" (func (;15;) (type 4)))
  (import "env" "managedGetMultiESDTCallValue" (func (;16;) (type 4)))
  (import "env" "bigIntGetCallValue" (func (;17;) (type 4)))
  (import "env" "getNumArguments" (func (;18;) (type 3)))
  (import "env" "mBufferFinish" (func (;19;) (type 2)))
  (import "env" "finish" (func (;20;) (type 5)))
  (import "env" "bigIntCmp" (func (;21;) (type 1)))
  (import "env" "mBufferSetBytes" (func (;22;) (type 7)))
  (import "env" "bigIntMul" (func (;23;) (type 6)))
  (import "env" "mBufferFromBigIntUnsigned" (func (;24;) (type 1)))
  (import "env" "mBufferStorageLoad" (func (;25;) (type 1)))
  (import "env" "mBufferToBigIntUnsigned" (func (;26;) (type 1)))
  (import "env" "mBufferStorageStore" (func (;27;) (type 1)))
  (import "env" "mBufferGetArgument" (func (;28;) (type 1)))
  (import "env" "managedSignalError" (func (;29;) (type 4)))
  (import "env" "bigIntSign" (func (;30;) (type 2)))
  (import "env" "checkNoPayment" (func (;31;) (type 0)))
  (import "env" "getGasLeft" (func (;32;) (type 12)))
  (import "env" "managedExecuteOnDestContext" (func (;33;) (type 13)))
  (import "env" "cleanReturnData" (func (;34;) (type 0)))
  (import "env" "smallIntFinishSigned" (func (;35;) (type 14)))
  (import "env" "bigIntFinishUnsigned" (func (;36;) (type 4)))
  (import "env" "bigIntSub" (func (;37;) (type 6)))
  (import "env" "mBufferGetByteSlice" (func (;38;) (type 15)))
  (func (;39;) (type 16) (param i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.le_u
      if  ;; label = @2
        local.get 2
        local.get 4
        i32.le_u
        br_if 1 (;@1;)
        call 40
        unreachable
      end
      call 40
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 1
    local.get 3
    i32.add
    i32.store)
  (func (;40;) (type 0)
    call 99
    unreachable)
  (func (;41;) (type 3) (result i32)
    (local i32)
    call 42
    local.tee 0
    i64.const 10000000000000000
    call 1
    local.get 0)
  (func (;42;) (type 3) (result i32)
    (local i32)
    i32.const 1049016
    i32.const 1049016
    i32.load
    i32.const 1
    i32.sub
    local.tee 0
    i32.store
    local.get 0)
  (func (;43;) (type 2) (param i32) (result i32)
    (local i32)
    call 2
    local.tee 1
    local.get 0
    call 3
    drop
    local.get 1)
  (func (;44;) (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 4
    i32.const 0
    i32.gt_s)
  (func (;45;) (type 5) (param i32 i32)
    local.get 0
    local.get 1
    call 0
    unreachable)
  (func (;46;) (type 6) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    call 47
    local.set 5
    call 47
    local.set 6
    block  ;; label = @1
      local.get 1
      i32.const 2147483646
      i32.ne
      if  ;; label = @2
        call 47
        local.set 7
        local.get 1
        call 43
        local.set 4
        call 42
        local.tee 1
        i64.const 0
        call 1
        local.get 1
        local.get 1
        local.get 2
        call 5
        local.get 3
        i32.const 32
        i32.add
        i64.const 0
        i64.store
        local.get 3
        i64.const 0
        i64.store offset=24
        local.get 3
        local.get 4
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        local.get 4
        i32.const 24
        i32.shl
        i32.or
        local.get 4
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 4
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store offset=40
        local.get 3
        i32.const 16
        i32.add
        local.get 3
        i32.const 24
        i32.add
        local.tee 2
        i32.const 0
        i32.const 4
        call 48
        local.get 3
        i32.load offset=16
        local.get 3
        i32.load offset=20
        local.get 3
        i32.const 40
        i32.add
        local.tee 4
        i32.const 4
        call 49
        local.get 3
        i64.const 0
        i64.store offset=40
        local.get 3
        i32.const 8
        i32.add
        local.get 2
        i32.const 4
        i32.const 12
        call 48
        local.get 3
        i32.load offset=8
        local.get 3
        i32.load offset=12
        local.get 4
        i32.const 8
        call 49
        local.get 3
        local.get 1
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        local.get 1
        i32.const 24
        i32.shl
        i32.or
        local.get 1
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 1
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store offset=40
        local.get 3
        local.get 2
        i32.const 12
        i32.const 16
        call 48
        local.get 3
        i32.load
        local.get 3
        i32.load offset=4
        local.get 4
        i32.const 4
        call 49
        local.get 7
        local.get 2
        i32.const 16
        call 6
        drop
        local.get 0
        i32.load
        local.get 7
        i64.const 0
        local.get 5
        local.get 6
        call 7
        drop
        br 1 (;@1;)
      end
      local.get 0
      i32.load
      local.get 2
      i64.const 0
      local.get 5
      local.get 6
      call 8
      drop
    end
    local.get 3
    i32.const 48
    i32.add
    global.set 0)
  (func (;47;) (type 3) (result i32)
    (local i32)
    call 42
    local.tee 0
    i32.const 1048916
    i32.const 0
    call 22
    drop
    local.get 0)
  (func (;48;) (type 9) (param i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i32.const 8
    i32.add
    local.get 2
    local.get 3
    local.get 1
    i32.const 16
    call 39
    local.get 4
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 4
    i32.load offset=8
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func (;49;) (type 9) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 1
    local.get 3
    i32.eq
    if  ;; label = @1
      local.get 1
      local.tee 3
      i32.const 15
      i32.gt_u
      if  ;; label = @2
        local.get 0
        i32.const 0
        local.get 0
        i32.sub
        i32.const 3
        i32.and
        local.tee 5
        i32.add
        local.set 4
        local.get 5
        if  ;; label = @3
          local.get 2
          local.set 1
          loop  ;; label = @4
            local.get 0
            local.get 1
            i32.load8_u
            i32.store8
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 0
            i32.const 1
            i32.add
            local.tee 0
            local.get 4
            i32.lt_u
            br_if 0 (;@4;)
          end
        end
        local.get 4
        local.get 3
        local.get 5
        i32.sub
        local.tee 3
        i32.const -4
        i32.and
        local.tee 6
        i32.add
        local.set 0
        block  ;; label = @3
          local.get 2
          local.get 5
          i32.add
          local.tee 5
          i32.const 3
          i32.and
          local.tee 1
          if  ;; label = @4
            local.get 6
            i32.const 0
            i32.le_s
            br_if 1 (;@3;)
            local.get 5
            i32.const -4
            i32.and
            local.tee 7
            i32.const 4
            i32.add
            local.set 2
            i32.const 0
            local.get 1
            i32.const 3
            i32.shl
            local.tee 8
            i32.sub
            i32.const 24
            i32.and
            local.set 9
            local.get 7
            i32.load
            local.set 1
            loop  ;; label = @5
              local.get 4
              local.get 1
              local.get 8
              i32.shr_u
              local.get 2
              i32.load
              local.tee 1
              local.get 9
              i32.shl
              i32.or
              i32.store
              local.get 2
              i32.const 4
              i32.add
              local.set 2
              local.get 4
              i32.const 4
              i32.add
              local.tee 4
              local.get 0
              i32.lt_u
              br_if 0 (;@5;)
            end
            br 1 (;@3;)
          end
          local.get 6
          i32.const 0
          i32.le_s
          br_if 0 (;@3;)
          local.get 5
          local.set 2
          loop  ;; label = @4
            local.get 4
            local.get 2
            i32.load
            i32.store
            local.get 2
            i32.const 4
            i32.add
            local.set 2
            local.get 4
            i32.const 4
            i32.add
            local.tee 4
            local.get 0
            i32.lt_u
            br_if 0 (;@4;)
          end
        end
        local.get 3
        i32.const 3
        i32.and
        local.set 3
        local.get 5
        local.get 6
        i32.add
        local.set 2
      end
      local.get 3
      if  ;; label = @2
        local.get 0
        local.get 3
        i32.add
        local.set 1
        loop  ;; label = @3
          local.get 0
          local.get 2
          i32.load8_u
          i32.store8
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          local.get 0
          i32.const 1
          i32.add
          local.tee 0
          local.get 1
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      return
    end
    call 99
    unreachable)
  (func (;50;) (type 3) (result i32)
    (local i32)
    call 42
    local.tee 0
    call 9
    local.get 0)
  (func (;51;) (type 2) (param i32) (result i32)
    (local i32 i32 i32)
    call 42
    local.tee 1
    call 10
    local.get 1
    local.set 2
    call 42
    local.set 1
    local.get 0
    i32.const 2147483646
    i32.eq
    if  ;; label = @1
      local.get 2
      call 52
      i32.const 1049025
      local.get 1
      call 11
      local.get 1
      return
    end
    local.get 0
    call 12
    local.set 3
    local.get 2
    call 52
    local.get 0
    i32.const 1049057
    call 13
    drop
    i32.const 1049025
    i32.const 1049057
    local.get 3
    i64.const 0
    local.get 1
    call 14
    local.get 1)
  (func (;52;) (type 4) (param i32)
    local.get 0
    i32.const 1049025
    call 13
    drop)
  (func (;53;) (type 0)
    (local i32)
    call 42
    local.tee 0
    call 15
    local.get 0
    call 50
    call 44
    if  ;; label = @1
      return
    end
    i32.const 1048916
    i32.const 36
    call 0
    unreachable)
  (func (;54;) (type 4) (param i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    i32.const -21
    local.set 1
    block  ;; label = @1
      i32.const 1049024
      i32.load8_u
      local.tee 3
      if  ;; label = @2
        i32.const -21
        i32.const 2147483647
        local.get 3
        select
        local.set 1
        br 1 (;@1;)
      end
      i32.const 1049024
      i32.const 1
      i32.store8
      i32.const -21
      call 16
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              call 12
              i32.const 4
              i32.shr_u
              br_table 1 (;@4;) 2 (;@3;) 0 (;@5;)
            end
            i32.const 1048589
            i32.const 34
            call 0
            unreachable
          end
          i32.const -11
          local.set 1
          i32.const 2147483646
          local.set 3
          i32.const 1049020
          i32.load8_u
          local.tee 4
          if  ;; label = @4
            i32.const -11
            i32.const 2147483647
            local.get 4
            select
            local.set 1
            br 2 (;@2;)
          end
          i32.const 1049020
          i32.const 1
          i32.store8
          i32.const -11
          call 17
          br 1 (;@2;)
        end
        local.get 2
        i32.const 8
        i32.add
        i64.const 0
        i64.store
        local.get 2
        i64.const 0
        i64.store
        local.get 1
        local.get 2
        i32.const 16
        call 55
        br_if 1 (;@1;)
        local.get 2
        i64.load offset=4 align=4
        local.tee 5
        i64.const 56
        i64.shl
        local.get 5
        i64.const 40
        i64.shl
        i64.const 71776119061217280
        i64.and
        i64.or
        local.get 5
        i64.const 24
        i64.shl
        i64.const 280375465082880
        i64.and
        local.get 5
        i64.const 8
        i64.shl
        i64.const 1095216660480
        i64.and
        i64.or
        i64.or
        local.get 5
        i64.const 8
        i64.shr_u
        i64.const 4278190080
        i64.and
        local.get 5
        i64.const 24
        i64.shr_u
        i64.const 16711680
        i64.and
        i64.or
        local.get 5
        i64.const 40
        i64.shr_u
        i64.const 65280
        i64.and
        local.get 5
        i64.const 56
        i64.shr_u
        i64.or
        i64.or
        i64.or
        local.set 5
        local.get 2
        i32.load
        local.tee 1
        i32.const 24
        i32.shl
        local.get 1
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 1
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 1
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        local.set 3
        local.get 2
        i32.load offset=12
        local.tee 1
        i32.const 24
        i32.shl
        local.get 1
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 1
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 1
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        local.set 1
      end
      local.get 0
      local.get 1
      i32.store offset=12
      local.get 0
      local.get 5
      i64.store
      local.get 0
      local.get 3
      i32.store offset=8
      local.get 2
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 1048662
    i32.const 29
    call 0
    unreachable)
  (func (;55;) (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 0
    local.get 2
    local.get 1
    call 38
    i32.const 0
    i32.ne)
  (func (;56;) (type 3) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    call 54
    local.get 0
    i32.load offset=8
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;57;) (type 3) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    call 54
    local.get 0
    i32.load offset=12
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;58;) (type 2) (param i32) (result i32)
    local.get 0
    call 59
    call 60)
  (func (;59;) (type 2) (param i32) (result i32)
    local.get 0
    call 42
    local.tee 0
    call 28
    drop
    local.get 0)
  (func (;60;) (type 2) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    call 12
    i32.const 4
    i32.eq
    if  ;; label = @1
      local.get 1
      i32.const 0
      i32.store offset=12
      local.get 0
      local.get 1
      i32.const 12
      i32.add
      i32.const 4
      call 55
      drop
      i32.const 2147483646
      local.get 0
      local.get 1
      i32.load offset=12
      i32.const 1145849669
      i32.eq
      select
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;61;) (type 4) (param i32)
    call 18
    local.get 0
    i32.eq
    if  ;; label = @1
      return
    end
    i32.const 1048623
    i32.const 25
    call 0
    unreachable)
  (func (;62;) (type 4) (param i32)
    local.get 0
    call 63
    local.tee 0
    i32.const 2147483646
    i32.ne
    if  ;; label = @1
      local.get 0
      call 19
      drop
      return
    end
    i32.const 1048691
    i32.const 4
    call 20)
  (func (;63;) (type 2) (param i32) (result i32)
    local.get 0
    call 71
    call 60)
  (func (;64;) (type 5) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 1
    i32.const 24
    i32.shl
    i32.or
    local.get 1
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 1
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    call 6
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;65;) (type 1) (param i32 i32) (result i32)
    i32.const -1
    local.get 0
    local.get 1
    call 21
    local.tee 0
    i32.const 0
    i32.ne
    local.get 0
    i32.const 0
    i32.lt_s
    select)
  (func (;66;) (type 1) (param i32 i32) (result i32)
    (local i32)
    call 42
    local.tee 2
    local.get 0
    local.get 1
    call 22
    drop
    local.get 2)
  (func (;67;) (type 1) (param i32 i32) (result i32)
    (local i32)
    call 42
    local.tee 2
    local.get 0
    local.get 1
    call 23
    local.get 2)
  (func (;68;) (type 2) (param i32) (result i32)
    (local i32)
    call 42
    local.tee 1
    local.get 0
    call 24
    drop
    local.get 1)
  (func (;69;) (type 3) (result i32)
    (local i32)
    call 42
    local.tee 0
    i64.const 0
    call 1
    local.get 0)
  (func (;70;) (type 2) (param i32) (result i32)
    local.get 0
    i32.const -25
    call 25
    drop
    i32.const -25
    call 12)
  (func (;71;) (type 2) (param i32) (result i32)
    local.get 0
    call 42
    local.tee 0
    call 25
    drop
    local.get 0)
  (func (;72;) (type 2) (param i32) (result i32)
    (local i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i64.const 0
    i64.store offset=8
    local.get 0
    call 71
    local.tee 0
    call 12
    local.tee 2
    i32.const 9
    i32.lt_u
    if  ;; label = @1
      local.get 1
      i32.const 0
      local.get 2
      local.get 1
      i32.const 8
      i32.add
      i32.const 8
      call 39
      local.get 0
      local.get 1
      i32.load
      local.tee 2
      local.get 1
      i32.load offset=4
      local.tee 0
      call 55
      drop
      block (result i32)  ;; label = @2
        i32.const 0
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        drop
        loop  ;; label = @3
          local.get 0
          if  ;; label = @4
            local.get 0
            i32.const 1
            i32.sub
            local.set 0
            local.get 2
            i64.load8_u
            local.get 3
            i64.const 8
            i64.shl
            i64.or
            local.set 3
            local.get 2
            i32.const 1
            i32.add
            local.set 2
            br 1 (;@3;)
          end
        end
        block  ;; label = @3
          local.get 3
          i64.const 1
          i64.le_u
          if  ;; label = @4
            i32.const 0
            local.get 3
            i32.wrap_i64
            i32.const 1
            i32.sub
            br_if 2 (;@2;)
            drop
            br 1 (;@3;)
          end
          i32.const 1048695
          i32.const 18
          call 73
          unreachable
        end
        i32.const 1
      end
      local.get 1
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 1048648
    i32.const 14
    call 73
    unreachable)
  (func (;73;) (type 5) (param i32 i32)
    (local i32)
    i32.const 1048713
    i32.const 22
    call 66
    local.tee 2
    local.get 0
    local.get 1
    call 6
    drop
    local.get 2
    call 29
    unreachable)
  (func (;74;) (type 2) (param i32) (result i32)
    local.get 0
    call 71
    call 42
    local.tee 0
    call 26
    drop
    local.get 0)
  (func (;75;) (type 5) (param i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i64.const 72057594037927936
    i64.const 0
    local.get 1
    select
    i64.store offset=8
    block  ;; label = @1
      local.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 1048916
        local.set 1
        br 1 (;@1;)
      end
      i32.const 0
      local.set 1
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 8
            i32.ne
            if  ;; label = @5
              local.get 3
              i32.const 8
              i32.add
              local.get 1
              i32.add
              i32.load8_u
              local.tee 2
              i32.eqz
              br_if 2 (;@3;)
              local.get 2
              i32.const 24
              i32.shl
              i32.const 31
              i32.shr_s
              local.tee 2
              local.get 1
              i32.add
              local.tee 4
              i32.const 9
              i32.ge_u
              br_if 1 (;@4;)
              local.get 3
              i32.const 8
              i32.add
              local.get 2
              i32.add
              local.get 1
              i32.add
              local.set 1
              i32.const 8
              local.get 4
              i32.sub
              local.set 2
              br 4 (;@1;)
            end
            call 98
            unreachable
          end
          call 98
          unreachable
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 0 (;@2;)
      end
      unreachable
    end
    local.get 0
    local.get 1
    local.get 2
    call 76
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;76;) (type 6) (param i32 i32 i32)
    (local i32)
    call 42
    local.tee 3
    local.get 1
    local.get 2
    call 22
    drop
    local.get 0
    local.get 3
    call 27
    drop)
  (func (;77;) (type 5) (param i32 i32)
    local.get 0
    local.get 1
    call 68
    call 27
    drop)
  (func (;78;) (type 5) (param i32 i32)
    local.get 1
    i32.const 2147483646
    i32.ne
    if  ;; label = @1
      local.get 0
      local.get 1
      call 27
      drop
      return
    end
    local.get 0
    i32.const 1048691
    i32.const 4
    call 76)
  (func (;79;) (type 1) (param i32 i32) (result i32)
    block (result i32)  ;; label = @1
      i32.const 1
      local.get 0
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      drop
      i32.const 0
      local.get 0
      i32.const 2147483646
      i32.eq
      local.get 1
      i32.const 2147483646
      i32.eq
      i32.or
      br_if 0 (;@1;)
      drop
      local.get 0
      local.get 1
      call 44
    end)
  (func (;80;) (type 3) (result i32)
    i32.const 1048735
    i32.const 13
    call 66)
  (func (;81;) (type 3) (result i32)
    i32.const 1048748
    i32.const 14
    call 66)
  (func (;82;) (type 3) (result i32)
    i32.const 1048762
    i32.const 6
    call 66)
  (func (;83;) (type 3) (result i32)
    i32.const 1048768
    i32.const 6
    call 66)
  (func (;84;) (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 65
    i32.const 255
    i32.and
    i32.const 1
    i32.eq)
  (func (;85;) (type 2) (param i32) (result i32)
    local.get 0
    call 30
    i32.const 0
    i32.gt_s)
  (func (;86;) (type 0)
    (local i32 i32 i32)
    call 31
    i32.const 2
    call 61
    i32.const 0
    call 58
    local.tee 0
    i32.const 1
    call 58
    local.tee 1
    call 79
    i32.eqz
    if  ;; label = @1
      call 82
      local.tee 2
      call 70
      i32.eqz
      if  ;; label = @2
        local.get 2
        i32.const 1
        call 75
      end
      call 81
      local.get 0
      call 78
      call 80
      local.get 1
      call 78
      call 83
      local.set 0
      call 69
      local.set 1
      local.get 0
      call 70
      i32.eqz
      if  ;; label = @2
        local.get 0
        local.get 1
        call 77
      end
      return
    end
    i32.const 1048828
    i32.const 25
    call 45
    unreachable)
  (func (;87;) (type 0)
    (local i32 i32 i32 i64)
    call 31
    call 53
    i32.const 1
    call 61
    i32.const 0
    call 59
    local.set 0
    call 81
    call 63
    call 51
    local.tee 2
    call 69
    call 84
    i32.eqz
    if  ;; label = @1
      i32.const 1048774
      i32.const 40
      call 45
      unreachable
    end
    call 47
    local.set 1
    call 47
    drop
    local.get 1
    local.get 0
    call 43
    call 64
    call 47
    drop
    local.get 1
    local.get 2
    call 68
    call 64
    call 32
    i32.const 1048576
    i32.const 13
    call 66
    local.set 0
    i32.const -25
    call 10
    i32.const -25
    call 69
    local.get 0
    local.get 1
    call 42
    call 33
    drop
    call 34)
  (func (;88;) (type 0)
    (local i32 i32 i32)
    call 56
    local.set 0
    call 57
    local.set 1
    call 53
    i32.const 0
    call 61
    block  ;; label = @1
      local.get 0
      call 80
      call 63
      call 79
      if  ;; label = @2
        local.get 1
        call 85
        i32.eqz
        br_if 1 (;@1;)
        call 83
        local.tee 2
        call 74
        local.tee 0
        local.get 0
        local.get 1
        call 5
        local.get 2
        local.get 0
        call 77
        return
      end
      i32.const 1048814
      i32.const 14
      call 45
      unreachable
    end
    i32.const 1048774
    i32.const 40
    call 45
    unreachable)
  (func (;89;) (type 0)
    call 31
    i32.const 0
    call 61
    call 82
    call 72
    i64.extend_i32_u
    call 35)
  (func (;90;) (type 0)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 31
    call 53
    i32.const 0
    call 61
    local.get 0
    call 50
    i32.store offset=12
    call 81
    call 63
    call 51
    local.tee 1
    call 69
    call 84
    if  ;; label = @1
      local.get 0
      i32.const 12
      i32.add
      call 81
      call 63
      local.get 1
      call 46
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;91;) (type 0)
    call 31
    i32.const 0
    call 61
    call 83
    call 74
    call 36)
  (func (;92;) (type 0)
    call 31
    call 53
    i32.const 0
    call 61
    call 82
    call 82
    call 72
    i32.const 1
    i32.xor
    call 75)
  (func (;93;) (type 0)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 31
    call 53
    i32.const 0
    call 61
    local.get 0
    call 50
    i32.store offset=12
    call 80
    call 63
    call 51
    local.tee 1
    call 69
    call 84
    if  ;; label = @1
      local.get 0
      i32.const 12
      i32.add
      call 80
      call 63
      local.get 1
      call 46
    end
    call 83
    call 69
    call 77
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;94;) (type 0)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    call 56
    local.set 0
    call 57
    local.set 1
    i32.const 0
    call 61
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            call 82
            call 72
            i32.eqz
            if  ;; label = @5
              local.get 0
              call 81
              call 63
              call 79
              i32.eqz
              br_if 1 (;@4;)
              local.get 1
              call 85
              i32.eqz
              br_if 2 (;@3;)
              call 83
              call 74
              local.get 1
              call 65
              i32.const 255
              i32.and
              i32.const 2
              i32.ge_u
              br_if 3 (;@2;)
              local.get 2
              call 50
              i32.store offset=12
              local.get 1
              call 41
              call 67
              local.set 0
              local.get 2
              i32.const 12
              i32.add
              call 80
              call 63
              local.get 0
              call 46
              call 83
              local.tee 3
              call 74
              local.tee 0
              local.get 0
              local.get 1
              call 41
              call 67
              call 37
              local.get 0
              call 30
              i32.const 0
              i32.lt_s
              br_if 4 (;@1;)
              local.get 3
              local.get 0
              call 77
              local.get 2
              i32.const 16
              i32.add
              global.set 0
              return
            end
            i32.const 1048853
            i32.const 23
            call 45
            unreachable
          end
          i32.const 1048814
          i32.const 14
          call 45
          unreachable
        end
        i32.const 1048774
        i32.const 40
        call 45
        unreachable
      end
      i32.const 1048876
      i32.const 37
      call 45
      unreachable
    end
    i32.const 1048952
    i32.const 48
    call 0
    unreachable)
  (func (;95;) (type 0)
    call 31
    i32.const 0
    call 61
    call 81
    call 62)
  (func (;96;) (type 0)
    call 31
    i32.const 0
    call 61
    call 80
    call 62)
  (func (;97;) (type 0)
    nop)
  (func (;98;) (type 0)
    i32.const 1049000
    i32.const 14
    call 0
    unreachable)
  (func (;99;) (type 0)
    call 98
    unreachable)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1049089))
  (global (;2;) i32 (i32.const 1049104))
  (export "memory" (memory 0))
  (export "init" (func 86))
  (export "BurnOldTokens" (func 87))
  (export "FundContract" (func 88))
  (export "GetIsPaused" (func 89))
  (export "GetOldTokens" (func 90))
  (export "GetSupply" (func 91))
  (export "Pause" (func 92))
  (export "ReFundContract" (func 93))
  (export "SwapToken" (func 94))
  (export "TokenForSwap" (func 95))
  (export "TokenSwapped" (func 96))
  (export "callBack" (func 97))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data (;0;) (i32.const 1048576) "ESDTLocalBurnincorrect number of ESDT transferswrong number of argumentsinput too longManagedVec index out of rangeEGLDinput out of rangestorage decode error: token_swappedtoken_for_swappausedsupplyNumber of tokens must be greater than 0.Invalid token.Tokens must be different.Swap is already paused.Not enough tokens available for swap.\00\00\00Endpoint can only be called by ownercannot subtract because result would be negativepanic occurred")
  (data (;1;) (i32.const 1049016) "\9c\ff\ff\ff"))
