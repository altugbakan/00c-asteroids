# Out of Control Asteroids

This repository aims to create the Soroban Contract with the smallest WASM size for the [Fast, Cheap, and Out of Control](https://fastcheapandoutofcontrol.com/)'s [Asteroids Game](https://fastcheapandoutofcontrol.com/game/asteroids/play).

Try checking out [solution.wat](./solution.wat) for understanding more about the WebAssembly stack machine.

## Requirements

This repository highly utilizes `make` and other Linux programs for building and testing. You also need to install the [Rust](https://www.rust-lang.org/) toolchain to be able to compile and test these contracts. Additionally, you need to install the [WebAssembly Binary Toolkit](https://github.com/WebAssembly/wabt) for binary modifications and add the binary files to your PATH.

## Usage

- ```bash
  make build
  ```

  to create an optimized contract and convert it into [solution.wat](./solution.wat) file for further WebAssembly modification.

- ```bash
  make test
  ```

  to test your [Rust contract](contracts/solution/src/lib.rs)'s logic.

- ```bash
  make wasm
  ```

  to convert your [solution.wat](./solution.wat) file into [solution.wasm](./solution.wasm) and append the required `contractenvmetav0` extension to your WASM file for submission.

- ```bash
  make test-wasm
  ```

  to test your [solution.wat](./solution.wat) file's budget and logic.
