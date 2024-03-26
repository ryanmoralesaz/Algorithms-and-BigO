function linearSearch(arr: number[], target: number): number {
    for (let i = 0; i < arr.length; i++) {
        if (arr[i] === target) {
            return i;
         } 
     }
    return -1; 
 }

//  Test 1
const arr: number[] = [4, 2, 7, 1, 3];
const target: number = 7;

const result: number = linearSearch(arr, target);
if (result !== -1) {
    console.log(`Element founh at index ${result}`);
} else {
    console.log("element does not exist in the array");
 }
