(module
  (type (;0;) (func (param i64) (result i64)))
  (type (;1;) (func (param i64 i64) (result i64)))
  (type (;2;) (func (param i64 i64 i64) (result i64)))
  (import "v" "_" (func (;0;) (type 0)))
  (import "d" "_" (func (;1;) (type 2)))
  (import "v" "6" (func (;2;) (type 1)))
  (import "m" "4" (func (;3;) (type 1)))
  (func (;4;) (type 0) (param i64) (result i64)
    (local i32 i32 i32 i32 i64 i64 i64 i64)
    block  ;; label = @1
      i32.const 8
      local.set 2
      i32.const 8
      local.set 1
      loop  ;; label = @2
        local.get 0
        i64.const 49115374459737
        i64.const 5
        call 0
        call 1
        local.tee 7
        i32.wrap_i64
        i32.const 23
        i32.ne
        br_if 1 (;@1;)
        local.get 2
        i64.extend_i32_u
        i64.const 4
        i64.shl
        i64.const 3
        i64.or
        local.set 8
        i64.const 1
        local.set 5
        i32.const 0
        local.set 3
        loop  ;; label = @3
          local.get 7
          i64.const 33
          call 0
          local.get 8
          call 2
          local.get 1
          local.get 3
          i32.add
          local.tee 4
          i64.extend_i32_u
          i64.const 4
          i64.shl
          i64.const 3
          i64.or
          call 2
          call 3
          i64.const 21
          i64.eq
          if  ;; label = @4
            i64.const 17
            call 0
            i64.const 33625
            call 2
            local.set 6
            local.get 0
            i64.const 911044435769
            i64.const 5
            call 0
            local.get 6
            call 2
            call 1
            drop
            local.get 0
            i64.const 911014686377
            i64.const 5
            call 0
            local.get 5
            call 2
            call 1
            drop
            local.get 0
            i64.const 58306520732569
            i64.const 5
            call 0
            call 1
            drop
            local.get 0
            i64.const 238811294867317657
            i64.const 5
            call 0
            call 1
            drop
            local.get 4
            local.set 1
          end
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 5
          i64.const 16
          i64.add
          local.tee 5
          i64.const 257
          i64.ne
          br_if 0 (;@3;)
        end
        i64.const 17
        call 0
        i64.const 1113750348935065
        call 2
        local.set 6
        local.get 0
        i64.const 911044435769
        i64.const 5
        call 0
        local.get 6
        call 2
        call 1
        drop
        local.get 0
        i64.const 911014686377
        i64.const 5
        call 0
        i64.const 17
        call 2
        call 1
        drop
        local.get 1
        i32.const 1
        i32.sub
        local.set 1
        local.get 2
        i32.const 1
        i32.sub
        local.tee 2
        i32.const -562
        i32.ne
        br_if 0 (;@2;)
      end
      i64.const 5
      return
    end
    unreachable)
  (export "solve" (func 4)))
