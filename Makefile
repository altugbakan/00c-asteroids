default: test

b:
	cargo build --target wasm32-unknown-unknown --release
	cd target/wasm32-unknown-unknown/release/ && \
		for i in *.wasm ; do \
			ls -l "$$i"; \
		done

bo:
	cargo +nightly build --target wasm32-unknown-unknown --release -Z build-std=std,panic_abort -Z build-std-features=panic_immediate_abort
	cd target/wasm32-unknown-unknown/release/ && \
		for i in *.wasm ; do \
			wasm-snip --snip-rust-panicking-code "$$i" > "$$i.tmp" && mv "$$i.tmp" "$$i"; \
			wasm-opt -Oz -c -mvp --code-folding --const-hoisting --strip-producers "$$i" -o "$$i.tmp" && mv "$$i.tmp" "$$i"; \
			ls -l "$$i"; \
		done

ftw:
	wat2wasm test.wat -o test.wasm
	tail -c 32 golden.wasm >> test.wasm
	ls -l test.wasm

t:
	cargo test fca00c_fast -- --nocapture

tb:
	cargo test fca00c_budget -- --nocapture

c:
	cargo clean

fmt:
	cargo fmt --all

rb:
	c
	bo
	tc

w:
	cp target/wasm32-unknown-unknown/release/soroban_asteroids_solution.wasm test.wasm
	wasm2wat target/wasm32-unknown-unknown/release/soroban_asteroids_solution.wasm > test.wat