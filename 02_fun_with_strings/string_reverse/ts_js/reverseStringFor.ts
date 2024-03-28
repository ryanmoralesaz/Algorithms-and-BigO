let someString: string = "Hello World";

function reverseString(str: string): string {
    let revStr: string = "";
    for (let i: number = str.length - 1; i >= 0; i--) {
        revStr += str[i];
    } 
    return revStr;
}

console.log(reverseString(someString));
