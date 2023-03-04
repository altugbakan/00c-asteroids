default: test

build:
	cargo +nightly build --target wasm32-unknown-unknown --release -Z build-std=std,panic_abort -Z build-std-features=panic_immediate_abort
	cd target/wasm32-unknown-unknown/release/ && \
		for i in *.wasm ; do \
			wasm-snip --snip-rust-panicking-code --skip-producers-section "$$i" > "$$i.tmp" && mv "$$i.tmp" "$$i"; \
			wasm-opt -Oz -c -mvp --const-hoisting --code-folding -n "$$i" -o "$$i.tmp" && mv "$$i.tmp" "$$i"; \
			ls -l "$$i"; \
		done
	wasm2wat target/wasm32-unknown-unknown/release/soroban_asteroids_solution.wasm -o solution.wat

test:
	cargo test fca00c_fast -- --nocapture

wasm:
	wat2wasm solution.wat -o solution.wasm
	cat soroban.ext >> solution.wasm
	ls -l solution.wasm

test-wasm:
	wat2wasm solution.wat -o solution.wasm
	tail -c 105 target/wasm32-unknown-unknown/release/soroban_asteroids_solution.wasm >> solution.wasm
	touch contracts/solution/src/test.rs
	cargo test fca00c_budget -- --nocapture
