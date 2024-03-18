function gaussSum(n: number): number { 
    return n * (n + 1) / 2;
}

console.time('gauss sum');
gaussSum(1000000000);
console.timeEnd("gauss sum");


console.log(gaussSum(100));