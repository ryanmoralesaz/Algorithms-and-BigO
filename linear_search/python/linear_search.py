def linear_search(arr, target):
    for i in range(len(arr)):
        if arr[i] == target:
            return i
    return -1

if __name__ == "__main__":
    arr = [3, 45, 1, 2, 99]
    target = 1 

    result_index = linear_search(arr, target)
    if result_index != -1:
        print(f"Element found at index: {result_index}")
    else:
        print("Element not found in array")