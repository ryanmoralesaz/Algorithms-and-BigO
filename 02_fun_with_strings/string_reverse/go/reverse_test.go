package main

import (
    "testing"
)

func BenchmarkReverseString(b *testing.B) {
    for i := 0; i < b.N; i++ {
        reverseString("hello world")
    }
}
