const std = @import("std");
const engine = @import("engine");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Zengine initialized successfully", .{});
}
