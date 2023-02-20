#![no_std]

use engine::{Client as GameEngine, Direction, Point};
use soroban_sdk::{contractimpl, BytesN, Env};

pub struct Solution;

mod engine {
    soroban_sdk::contractimport!(file = "../game_engine.wasm");
}

mod test;

#[contractimpl]
impl Solution {
    pub fn solve(env: Env, engine_id: BytesN<32>) {
        let engine = GameEngine::new(&env, &engine_id);
        let mut ship = Point(8, 8);

        // 570 iterations
        // while engine.p_points() < 100 {
        while ship.0 != -562 {
            for point in engine.get_map().keys().into_iter_unchecked() {
                // if something is above the spaceship, move there and
                // shoot and harvest without checking out what it is
                if ship.0 == point.0 && ship.1 <= point.1 {
                    engine.p_turn(&Direction::Up);
                    let diff = point.1.abs_diff(ship.1);
                    engine.p_move(&Some(diff));
                    ship = Point(ship.0, ship.1 + diff as i32);
                    engine.p_shoot();
                    engine.p_harvest();
                    engine.p_turn(&Direction::DownLeft);
                }
            }
            engine.p_move(&Some(1));
            ship = Point(ship.0 - 1, ship.1 - 1);
        }
    }
}
