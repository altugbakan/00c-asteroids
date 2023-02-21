#![no_std]

use soroban_sdk::{contractimpl, contracttype, symbol, vec, BytesN, Env, IntoVal, Map, RawVal};

pub struct Solution;

#[contracttype]
enum Direction {
    Up,
    UpRight,
    Right,
    DownRight,
    Down,
    DownLeft,
    Left,
    UpLeft,
}

#[contractimpl]
impl Solution {
    pub fn solve(env: Env, engine_id: BytesN<32>) {
        let mut ship = (8, 8);

        // 570 iterations
        // while engine.p_points() < 100 {
        while ship.0 != -562 {
            for (point, _) in env
                .invoke_contract::<Map<(i32, i32), RawVal>>(
                    &engine_id,
                    &symbol!("get_map"),
                    vec![&env],
                )
                .into_iter_unchecked()
            {
                // if something is above the spaceship, move there and
                // shoot and harvest without checking out what it is
                if ship.0 == point.0 && ship.1 <= point.1 {
                    env.invoke_contract::<RawVal>(
                        &engine_id,
                        &symbol!("p_turn"),
                        vec![&env, Direction::Up.into_val(&env)],
                    );
                    let diff = point.1.abs_diff(ship.1);
                    env.invoke_contract::<RawVal>(
                        &engine_id,
                        &symbol!("p_move"),
                        vec![&env, RawVal::from_u32(diff)],
                    );
                    env.invoke_contract::<RawVal>(&engine_id, &symbol!("p_shoot"), vec![&env]);
                    env.invoke_contract::<RawVal>(&engine_id, &symbol!("p_harvest"), vec![&env]);
                    env.invoke_contract::<RawVal>(
                        &engine_id,
                        &symbol!("p_turn"),
                        vec![&env, Direction::DownLeft.into_val(&env)],
                    );
                    ship.1 += diff as i32;
                }
            }
            env.invoke_contract::<RawVal>(
                &engine_id,
                &symbol!("p_move"),
                vec![&env, RawVal::from_u32(1)],
            );
            ship = (ship.0 - 1, ship.1 - 1);
        }
    }
}

mod test;
