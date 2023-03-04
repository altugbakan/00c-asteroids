;; Fast, Cheap & Out of Control - Asteroids Solution
;; 22/02/2023 by Sjox
(module
  (type (;0;) (func (param i64) (result i64)))
  (type (;1;) (func (param i64 i64) (result i64)))
  (type (;2;) (func (param i64 i64 i64) (result i64)))
  (import "v" "_" (func (;0;) (type 0))) ;; vec_new: takes: 1 puts: 1
  (import "d" "_" (func (;1;) (type 2))) ;; call: takes: 3 puts: 1
  (import "v" "6" (func (;2;) (type 1))) ;; vec_push: takes: 2 puts: 1
  (import "m" "4" (func (;3;) (type 1))) ;; map_has: takes: 2 puts: 1
  (func (;4;) (type 0) (param i64 (;engine_id;)) (result i64)
    (local i64 (;empty vec;)
      i64 (;((ship.1 << 4) | 3);) i64 (;((ship.0 << 4) | 3);)
      i64 (;(((0..16) << 4) | 3);)
      i64 (;(((ship.0 + (0..16)) << 4) | 3);))
    i64.const 131 ;; ((8 << 4) | 3) i64
    local.tee 3 ;; ((8 << 4) | 3) i64
    local.set 2 ;;
    i64.const 5 ;; RawVal::VOID i64
    call 0 ;; new_vec i64
    local.set 1 ;;
    loop ;;
      i64.const 3 ;; ((0 << 4) | 3) i64
      local.set 4 ;;
      loop ;;
        local.get 0 ;; engine_id i64
        i64.const 49115374459737 ;; symbol!("get_map") i64, engine_id i64
        local.get 1 ;; empty_vec i64, symbol!("get_map") i64, engine_id i64
        call 1 ;; get_map i64
        local.get 1 ;; empty_vec i64, get_map i64
        local.get 3 ;; ((ship.0 << 4) | 3) i64, empty_vec i64, get_map i64
        call 2 ;; vec_push i64, get_map i64
        local.get 2 ;; ((ship.1 << 4) | 3) i64, vec_push i64, get_map i64
        local.get 4 ;; (((0..16) << 4) | 3) i64, ((ship.1 << 4) | 3) i64, vec_push i64, get_map i64
        i64.add ;; (((ship.0 + (0..16)) << 4) | 6) i64, vec_push i64, get_map i64
        i64.const 3 ;; 3 i64, (((ship.0 + (0..16)) << 4) | 6) i64, vec_push i64, get_map i64
        i64.sub ;; (((ship.0 + (0..16)) << 4) | 3) i64, vec_push i64, get_map i64
        local.tee 5 ;; (((ship.0 + (0..16)) << 4) | 3) i64, vec_push i64, get_map i64
        call 2 ;; vec_push i64, get_map i64
        call 3 ;; map_has i64
        i64.const 21 ;; RawVal::TRUE i64, map_has i64
        i64.eq ;; (RawVal::TRUE == map_has) i32
        if ;;
          local.get 0 ;; engine_id i64
          i64.const 911044435769 ;; symbol!("turn") i64, engine_id i64
          local.get 1 ;; empty_vec i64, symbol!("turn") i64, engine_id i64
          local.get 1 ;; empty_vec i64, empty_vec i64, symbol!("turn") i64, engine_id i64
          i64.const 33625 ;; Direction::Up i64, empty_vec i64, empty_vec i64, symbol!("turn") i64, engine_id i64
          call 2 ;; vec_push i64, empty_vec i64, symbol!("turn") i64, engine_id i64
          call 2 ;; vec_push i64, symbol!("turn") i64, engine_id i64
          call 1 ;; turn i64
          drop ;;
          local.get 0 ;; engine_id i64
          i64.const 911014686377 ;; symbol!("move") i64, engine_id i64
          local.get 1 ;; empty_vec i64, symbol!("move") i64, engine_id i64
          local.get 4 ;; (((0..16) << 4) | 3) i64, empty_vec i64, symbol!("move") i64, engine_id i64
          i64.const 2 ;; 2 i64, (((0..16) << 4) | 3) i64, empty_vec i64, symbol!("move") i64, engine_id i64
          i64.sub ;; (((0..16) << 4) | 1) i64, empty_vec i64, symbol!("move") i64, engine_id i64
          call 2 ;; vec_push i64, symbol!("move") i64, engine_id i64
          call 1 ;; move i64
          drop ;;
          local.get 0 ;; engine_id i64
          i64.const 58306520732569 ;; symbol!("shoot") i64, engine_id i64
          local.get 1 ;; empty_vec i64, symbol!("shoot") i64, engine_id i64
          call 1 ;; shoot i64
          drop ;;
          local.get 0 ;; engine_id i64
          i64.const 238811294867317657 ;; symbol!("harvest") i64, engine_id i64
          local.get 1 ;; empty_vec i64, symbol!("harvest") i64, engine_id i64
          call 1 ;; harvest i64
          drop ;;
          local.get 5 ;; (((ship.0 + (0..16)) << 4) | 3) i64
          local.set 2 ;; 
        end ;;
        local.get 4 ;; (((0..16) << 4) | 3) i64
        i64.const 16 ;; (1 << 4) i64; (((0..16) << 4) | 3) i64
        i64.add ;; ((((0..16) + 1) << 4) | 3) i64;
        local.tee 4 ;; ((((0..16) + 1) << 4) | 3) i64;
        i64.const 275 ;; (((16 + 1) << 4) | 3) i64, ((((0..16) + 1) << 4) | 3) i64;
        i64.ne ;; 16 != (0..16) i32;
        br_if 0 ;;
      end ;;
      local.get 0 ;; engine_id i64
      i64.const 911044435769 ;; symbol!("turn") i64, engine_id i64
      local.get 1 ;; empty_vec i64, symbol!("turn") i64, engine_id i64
      local.get 1 ;; empty_vec i64, empty_vec i64, symbol!("turn") i64, engine_id i64
      i64.const 1113750348935065 ;; Direction::DownLeft i64, empty_vec i64, empty_vec i64, symbol!("turn") i64, engine_id i64
      call 2 ;; vec_push i64, empty_vec i64, symbol!("turn") i64, engine_id i64
      call 2 ;; vec_push i64, symbol!("turn") i64, engine_id i64
      call 1 ;; turn i64
      drop ;;
      local.get 0 ;; engine_id i64
      i64.const 911014686377 ;; symbol!("move") i64, engine_id i64
      local.get 1 ;; empty_vec i64, symbol!("move") i64, engine_id i64
      i64.const 17 ;; RawVal::from_u32(1) i64, empty_vec i64, symbol!("move") i64, engine_id i64
      call 2 ;; vec_push i64, symbol!("move") i64, engine_id i64
      call 1 ;; move i64
      drop ;;
      local.get 2 ;; ((ship.1 << 4) | 3) i64
      i64.const 16 ;; (1 << 4) i64, ((ship.1 << 4) | 3) i64
      i64.sub ;; (((ship.1 - 1) << 4) | 3) i64
      local.set 2 ;;
      local.get 3 ;; ((ship.0 << 4) | 3) i64
      i64.const 16 ;; (1 << 4) i64, ((ship.0 << 4) | 3) i64
      i64.sub ;; (((ship.0 - 1) << 4) | 3) i64
      local.tee 3 ;; (((ship.0 - 1) << 4) | 3) i64
      i64.const -9005 ;; (((-562 - 1) << 4) | 3) i64, (((ship.0 - 1) << 4) | 3) i64
      i64.ne ;; (ship.0 != -562) i32
      br_if 0 ;;
    end ;;
    i64.const 5 ;; RawVal::VOID i64
    ) ;; implicit return
  (export "solve" (func 4))
) ;; gg
