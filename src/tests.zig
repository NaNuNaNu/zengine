const std = @import("std");
const expect = std.testing.expect;

const engine = @import("./engine.zig");

test "example order matching" {
    const buy_order = .{
        .id = 1,
        .price = 100,
        .quantity = 10,
    };

    const sell_order = .{
        .id = 2,
        .price = 100,
        .quantity = 10,
    };

    const result = engine.matchOrders(buy_order, sell_order);
    const exp = engine.MatchResult{ .matched_quantity = 10, .price = 100 };

    try expect(std.meta.eql(result, exp));
}
