fn linear_search(arr: &[i32], target: i32) -> Option<usize> {
    for (index, &item) in arr.iter().enumerate() {
        if item == target {
            return Some(index);
        }
    }
    None
}

fn main() {
    let arr = [3, 45, 1, 2, 99];
    let target = 1;
    match linear_search(&arr, target) {
        Some(index) => println!("Element found at index: {}", index),
        None => println!("Element not found in the array"),
    }
}