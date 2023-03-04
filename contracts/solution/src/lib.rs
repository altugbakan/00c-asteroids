#![no_std]

use soroban_sdk::{contractimpl, contracttype, symbol, vec, BytesN, Env, IntoVal, Map, RawVal};

pub struct Solution;

#[contracttype]
enum Direction {
    Up,
    DownLeft,
}

#[contractimpl]
impl Solution {
    pub fn solve(env: Env, engine_id: BytesN<32>) {
        let mut ship: (i32, i32) = (8, 8);

        let turn = |dir: &Direction| {
            env.invoke_contract::<RawVal>(
                &engine_id,
                &symbol!("p_turn"),
                vec![&env, dir.into_val(&env)],
            );
        };

        let go = |amount: u32| {
            env.invoke_contract::<RawVal>(
                &engine_id,
                &symbol!("p_move"),
                vec![&env, RawVal::from_u32(amount)],
            );
        };

        let shoot = || {
            env.invoke_contract::<RawVal>(&engine_id, &symbol!("p_shoot"), vec![&env]);
        };

        let harvest = || {
            env.invoke_contract::<RawVal>(&engine_id, &symbol!("p_harvest"), vec![&env]);
        };

        let map = || -> Map<(i32, i32), RawVal> {
            env.invoke_contract(&engine_id, &symbol!("get_map"), vec![&env])
        };

        while ship.0 != -562 {
            for p in 0..16 {
                // if something is above the spaceship, move there and
                // shoot and harvest without checking out what it is
                if map().contains_key((ship.0, ship.1 + p)) {
                    turn(&Direction::Up);
                    go(p as u32);
                    shoot();
                    harvest();
                    ship.1 += p;
                }
            }
            turn(&Direction::DownLeft);
            go(1);
            ship = (ship.0 - 1, ship.1 - 1);
        }
    }
}

mod test;
