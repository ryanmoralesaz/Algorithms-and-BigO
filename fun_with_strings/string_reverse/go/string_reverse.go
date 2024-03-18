package main

import (
	"fmt"
)

func reverseString(s string) string {
	runes := []rune(s)

	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}

	return string(runes)
}

func main() {
	originalString := "hello"
	reversedString := reverseString(originalString)

	fmt.Println("Original String:", originalString)
	fmt.Println("Reversed String:", reversedString)
}