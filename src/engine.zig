const std = @import("std");

pub const Order = struct {
    id: u32,
    price: u64,
    quantity: u64,
};

pub const MatchResult = struct {
    matched_quantity: u64,
    price: u64,
};

pub fn matchOrders(buy: Order, sell: Order) MatchResult {
    // Simple match logic
    return .{
        .matched_quantity = @min(buy.quantity, sell.quantity),
        .price = buy.price,
    };
}
