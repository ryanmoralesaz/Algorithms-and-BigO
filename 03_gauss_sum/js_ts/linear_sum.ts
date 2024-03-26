function linearSum (n: number): number {
    let sum: number = 0;
    for (let i: number = 1; i <= n; i++) { 
        sum += i;
    }
    return sum;
}
 
console.log(linearSum(100));