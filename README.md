# linux-zig

*Status: Trying to figure out build.zig dependencies*

Cross-compile a Linux kernel in a build.zig-compatible way.

Supports `{x86_64, x86, aarch64, arm, riscv64}`.

Uses `alpine-zig` to build the kernel within an Alpine-based container.

Kernel version: 6.5.7

## Todo

* Custom step to download the kernel source? No Zig builtin?
* Support custom configs. How?
