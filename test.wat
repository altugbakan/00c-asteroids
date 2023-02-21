(module
  (type (;0;) (func (param i64) (result i64)))
  (type (;1;) (func (param i64 i64) (result i64)))
  (type (;2;) (func (param i64 i64 i64) (result i64)))
  (import "b" "8" (func (;0;) (type 0)))
  (import "v" "_" (func (;1;) (type 0)))
  (import "v" "6" (func (;2;) (type 1)))
  (import "d" "_" (func (;3;) (type 2)))
  (import "m" "7" (func (;4;) (type 0)))
  (import "m" "1" (func (;5;) (type 1)))
  (import "m" "2" (func (;6;) (type 1)))
  (import "v" "3" (func (;7;) (type 0)))
  (import "v" "1" (func (;8;) (type 1)))
  (func (;9;) (type 0) (param i64) (result i64)
    (local i64 i64 i64 i64 i64 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.wrap_i64
      i32.const 103
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      call 0
      i64.const 68719476720
      i64.and
      i64.const 512
      i64.ne
      br_if 0 (;@1;)
      i32.const 8
      local.set 7
      i64.const 17
      call 1
      i64.const 33625
      call 2
      local.set 3
      i64.const 17
      call 1
      i64.const 1113750348935065
      call 2
      local.set 4
      i32.const 8
      local.set 6
      loop  ;; label = @2
        local.get 0
        i64.const 49115374459737
        i64.const 5
        call 1
        call 3
        local.tee 2
        i32.wrap_i64
        i32.const 23
        i32.ne
        br_if 1 (;@1;)
        loop  ;; label = @3
          local.get 2
          call 4
          local.tee 1
          i64.const 15
          i64.and
          i64.const 13
          i64.ne
          if  ;; label = @4
            local.get 2
            local.get 1
            call 5
            drop
            local.get 2
            local.get 1
            call 6
            local.set 2
            local.get 1
            i32.wrap_i64
            i32.const 7
            i32.ne
            br_if 3 (;@1;)
            local.get 1
            call 7
            i64.const 68719476735
            i64.and
            i64.const 33
            i64.ne
            br_if 3 (;@1;)
            local.get 1
            i64.const 1
            call 8
            local.tee 5
            i64.const 15
            i64.and
            i64.const 3
            i64.ne
            br_if 3 (;@1;)
            local.get 1
            i64.const 17
            call 8
            local.tee 1
            i64.const 15
            i64.and
            i64.const 3
            i64.ne
            br_if 3 (;@1;)
            local.get 7
            local.get 5
            i64.const 4
            i64.shr_u
            i32.wrap_i64
            i32.ne
            br_if 1 (;@3;)
            local.get 6
            local.get 1
            i64.const 4
            i64.shr_u
            i32.wrap_i64
            local.tee 8
            i32.gt_s
            br_if 1 (;@3;)
            local.get 0
            i64.const 911044435769
            i64.const 5
            call 1
            local.get 3
            call 2
            call 3
            drop
            local.get 0
            i64.const 911014686377
            i64.const 5
            call 1
            local.get 8
            local.get 6
            i32.sub
            local.tee 9
            i64.extend_i32_u
            i64.const 4
            i64.shl
            i64.const 1
            i64.or
            call 2
            call 3
            drop
            local.get 0
            i64.const 58306520732569
            i64.const 5
            call 1
            call 3
            drop
            local.get 0
            i64.const 238811294867317657
            i64.const 5
            call 1
            call 3
            drop
            local.get 0
            i64.const 911044435769
            i64.const 5
            call 1
            local.get 4
            call 2
            call 3
            drop
            local.get 9
            i32.const 0
            i32.lt_s
            local.get 6
            local.get 8
            i32.gt_s
            i32.xor
            br_if 3 (;@1;)
            local.get 8
            local.set 6
            br 1 (;@3;)
          end
        end
        local.get 0
        i64.const 911014686377
        i64.const 5
        call 1
        i64.const 17
        call 2
        call 3
        drop
        local.get 6
        local.get 6
        i32.const 1
        i32.sub
        local.tee 6
        i32.le_s
        br_if 1 (;@1;)
        local.get 7
        i32.const 1
        i32.sub
        local.tee 7
        i32.const -562
        i32.ne
        br_if 0 (;@2;)
      end
      i64.const 5
      return
    end
    unreachable)
  (export "solve" (func 9)))
