const std = @import("std");
const alpine_zig = @import("alpine_zig");

pub fn build(b: *std.Build) !void {
    const sbox = alpine_zig.addSandboxBuild(b, .{
        .build_dir = "linux",
        .outputs = &.{
            "kernel",
        },
    });
    b.getInstallStep().dependOn(&b.addInstallFile(sbox.outputs[0], "kernel").step);
}
