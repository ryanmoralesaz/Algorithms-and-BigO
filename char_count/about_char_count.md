# Problem: 
write a program that returns a count of each character in the string.

## Declare the problem:
```javascript
function charCount(str) {
    // make an object to return at the end
    // loop over the string, for each character...
    // if the char is a number/letter AND is a key in object, add one to count  
    
    // if the char is a number/letter AND not in object, add it to object and set value to 1

    // if the char is something else (space, period, etc.) don't do anything

    // return object at the end
}
```

## First Approach:
```javascript

let charString = "Something is Wicked";
let charLength = charString.length;
let charMap = {};
for (let i = 0; i < charLength; i++) {
    let char = charString.charAt(i);
//   console.log(charString.charAt(i));
   if (char in charMap) {
  // or // if (charMap[charString.charAt(i) === undefined) { 
       charMap[char]++;
   } else {
       charMap[char] = 1;
   } 
}

console.log(charMap);
```
- problems with this approach
charString.length is polluting global namespace.
- charMap object is polluting global namespace.
- need to use .toLowerCase() to not account for case sensitivity.
- we can use regex to check for alphanumeric characters.

## Optimal Approach:

```javascript
function charCount(str) {
  let result = {};
  for (let i = 0; i < str.length; i++) {
    let char = str[i].toLowerCase();
    if (/[a-z0-9]/.test(char)) {
      result[char] = ++result[char] || 1;
    }
  }
  return result;
}
```
