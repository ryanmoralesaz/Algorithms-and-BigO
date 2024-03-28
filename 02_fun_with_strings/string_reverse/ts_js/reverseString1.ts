// Make a function to reverse a provided string and return it.
function reverseString(str: string): string {
    str = str.split('').reverse().join('');
    return str;
}
console.log(reverseString('hello'));
