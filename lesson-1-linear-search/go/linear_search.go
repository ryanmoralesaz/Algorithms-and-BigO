package main

import "fmt"

func linearSearch(arr []int, target int) int {
	for i, value := range arr {
		if value == target {
			return i
		}
	}
	return -1
}

func main() {
	arr := []int{1, 3, 5, 7, 9}
	target := 7
	result := linearSearch(arr, target)
	if result != -1 {
		fmt.Printf("Element found at index %d\n", result)
	} else {
		fmt.Println("element not found in the array")
	}
}