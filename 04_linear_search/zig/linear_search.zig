const std = @import("std");

pub fn linearSearch(arr: []const i32, target: i32) !?usize {
    var i: usize = 0;
    while (i < arr.len) : (i += 1) {
        if (arr[i] == target) {
            return i; // Return the index if the target is found
        }
    }
    return null; // Return null if the element is not found
}

pub fn main() !void {
    const arr: []const i32 = &[_]i32{3, 45, 1, 2, 99}; // Use fixed-size array initialization
    const target: i32 = 1;
    const result = try linearSearch(arr, target) orelse {
        // Handle the case where the element is not found
        std.debug.print("Element not found in the array\n", .{});
        return;
    };
    // If we reach this point, the element was found
    std.debug.print("Element found at index: {}\n", .{result});
}
