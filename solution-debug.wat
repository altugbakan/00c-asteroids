(module
  (type (;0;) (func (param i64) (result i64)))
  (type (;1;) (func (param i64 i64 i64) (result i64)))
  (type (;2;) (func (param i64 i64) (result i64)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func))
  (import "v" "_" (func $_ZN17soroban_env_guest5guest3vec7vec_new17hf49b52bcd36e53eaE (type 0)))
  (import "d" "_" (func $_ZN17soroban_env_guest5guest4call4call17hab25ec2bdfc21da2E (type 1)))
  (import "v" "6" (func $_ZN17soroban_env_guest5guest3vec13vec_push_back17hac5f5f18078e5173E (type 2)))
  (import "m" "4" (func $_ZN17soroban_env_guest5guest3map7map_has17h4285c6985493cc43E (type 2)))
  (func $solve (type 0) (param i64) (result i64)
    (local i32 i32 i32 i64 i64 i64 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 0
      i32.wrap_i64
      i32.const 103
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      call $_ZN17soroban_env_guest5guest5bytes9bytes_len17h4b39adfe21b38868E
      i64.const 68719476720
      i64.and
      i64.const 512
      i64.ne
      br_if 0 (;@1;)
      i32.const 8
      local.set 2
      i32.const 8
      local.set 3
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i64.const 49115374459737
          i64.const 5
          call $_ZN17soroban_env_guest5guest3vec7vec_new17hf49b52bcd36e53eaE
          call $_ZN17soroban_env_guest5guest4call4call17hab25ec2bdfc21da2E
          local.tee 4
          i32.wrap_i64
          i32.const 23
          i32.ne
          br_if 1 (;@2;)
          local.get 2
          i64.extend_i32_u
          i64.const 4
          i64.shl
          i64.const 3
          i64.or
          local.set 5
          i64.const 1
          local.set 6
          i32.const 0
          local.set 7
          loop  ;; label = @4
            block  ;; label = @5
              local.get 4
              i64.const 33
              call $_ZN17soroban_env_guest5guest3vec7vec_new17hf49b52bcd36e53eaE
              local.get 5
              call $_ZN17soroban_env_guest5guest3vec13vec_push_back17hac5f5f18078e5173E
              local.get 3
              local.get 7
              i32.add
              local.tee 8
              i64.extend_i32_u
              i64.const 4
              i64.shl
              i64.const 3
              i64.or
              call $_ZN17soroban_env_guest5guest3vec13vec_push_back17hac5f5f18078e5173E
              call $_ZN17soroban_env_guest5guest3map7map_has17h4285c6985493cc43E
              i64.const 21
              i64.ne
              br_if 0 (;@5;)
              i64.const 17
              call $_ZN17soroban_env_guest5guest3vec7vec_new17hf49b52bcd36e53eaE
              i64.const 33625
              call $_ZN17soroban_env_guest5guest3vec13vec_push_back17hac5f5f18078e5173E
              local.set 9
              local.get 0
              i64.const 911044435769
              i64.const 5
              call $_ZN17soroban_env_guest5guest3vec7vec_new17hf49b52bcd36e53eaE
              local.get 9
              call $_ZN17soroban_env_guest5guest3vec13vec_push_back17hac5f5f18078e5173E
              call $_ZN17soroban_env_guest5guest4call4call17hab25ec2bdfc21da2E
              drop
              local.get 0
              i64.const 911014686377
              i64.const 5
              call $_ZN17soroban_env_guest5guest3vec7vec_new17hf49b52bcd36e53eaE
              local.get 6
              call $_ZN17soroban_env_guest5guest3vec13vec_push_back17hac5f5f18078e5173E
              call $_ZN17soroban_env_guest5guest4call4call17hab25ec2bdfc21da2E
              drop
              local.get 0
              i64.const 58306520732569
              i64.const 5
              call $_ZN17soroban_env_guest5guest3vec7vec_new17hf49b52bcd36e53eaE
              call $_ZN17soroban_env_guest5guest4call4call17hab25ec2bdfc21da2E
              drop
              local.get 0
              i64.const 238811294867317657
              i64.const 5
              call $_ZN17soroban_env_guest5guest3vec7vec_new17hf49b52bcd36e53eaE
              call $_ZN17soroban_env_guest5guest4call4call17hab25ec2bdfc21da2E
              drop
              local.get 8
              local.set 3
            end
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            local.get 6
            i64.const 16
            i64.add
            local.tee 6
            i64.const 257
            i64.ne
            br_if 0 (;@4;)
          end
          i64.const 17
          call $_ZN17soroban_env_guest5guest3vec7vec_new17hf49b52bcd36e53eaE
          i64.const 1113750348935065
          call $_ZN17soroban_env_guest5guest3vec13vec_push_back17hac5f5f18078e5173E
          local.set 6
          local.get 0
          i64.const 911044435769
          i64.const 5
          call $_ZN17soroban_env_guest5guest3vec7vec_new17hf49b52bcd36e53eaE
          local.get 6
          call $_ZN17soroban_env_guest5guest3vec13vec_push_back17hac5f5f18078e5173E
          call $_ZN17soroban_env_guest5guest4call4call17hab25ec2bdfc21da2E
          drop
          local.get 0
          i64.const 911014686377
          i64.const 5
          call $_ZN17soroban_env_guest5guest3vec7vec_new17hf49b52bcd36e53eaE
          i64.const 17
          call $_ZN17soroban_env_guest5guest3vec13vec_push_back17hac5f5f18078e5173E
          call $_ZN17soroban_env_guest5guest4call4call17hab25ec2bdfc21da2E
          drop
          local.get 3
          i32.const -1
          i32.add
          local.set 3
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          i32.const -562
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 1
        i32.const 16
        i32.add
        global.set $__stack_pointer
        i64.const 5
        return
      end
      local.get 1
      i32.const 8
      i32.add
      call $_ZN4core6result13unwrap_failed17ha2d692f1494e5ddeE
      unreachable
    end
    unreachable
    unreachable)
  (func $_ZN4core6result13unwrap_failed17ha2d692f1494e5ddeE (type 3) (param i32)
    call $_ZN4core9panicking9panic_fmt17h1d17fc068f528130E
    unreachable)
  (func $_ZN4core9panicking9panic_fmt17h1d17fc068f528130E (type 4)
    unreachable
    unreachable)
  (func $_ (type 4))
  (memory (;0;) 16)
  (global $__stack_pointer (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1048576))
  (global (;2;) i32 (i32.const 1048576))
  (export "memory" (memory 0))
  (export "solve" (func $solve))
  (export "_" (func $_))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2)))
