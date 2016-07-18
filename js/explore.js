// write a method that takes a string as a parameter and reverses the string
// for each letter in a word
//   take the last letter of the word
//   remove it from the word
//   add it to the front of the word
// repeat until each letter has been moved.

// var word = "";

function reverse(word) {
  var splitWord = word.split("");
  var reversedWord = splitWord.reverse();
  var joinArray = reversedWord.join("");
  
  return joinArray
}

console.log(reverse("Neel"))
console.log(reverse("welcometothemonkeyhouse"))
console.log(reverse("helloWorld"))