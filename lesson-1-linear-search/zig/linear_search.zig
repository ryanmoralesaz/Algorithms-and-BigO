const std = @import("std");

pub fn linearSearch(arr: []i32, target: i32) !usize {
    var i: usize = 0;
    while (i < arr.len) : (i += 1) {
        if (arr[i] == target) {
            return i;
        }
    }
    return error.NoElementFound;
}

pub fn main() !void {
    const arr: []i32 = [3, 45, 1, 2, 99];
    const target: i32 = 1;
    var result: usize = try linearSearch(arr, target);
    if (result != error.NoElementFound) {
        std.debug.print("Element found at index: {}\n", .{result});
    } else {
        std.debug.print("Element not found in the array\n");
    }
}
