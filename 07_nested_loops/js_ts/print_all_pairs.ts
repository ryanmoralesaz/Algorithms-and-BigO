function printAllPairs(n: number): any {
  for (let i = 0; i < n; i++) {
    for (let j = 0; j < n; j++) {
      console.log("i is: " + i, "j is: " + j);
    }
  }
}

printAllPairs(10);