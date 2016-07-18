// write a method that takes a string as a parameter and reverses the string
// for each letter in a word
//   take the last letter of the word
//   remove it from the word
//   add it to the front of the word
// repeat until each letter has been moved.

var word = "neel";

function reverse(word) {
  var reversedWord = "";
  
  for (var i = 0; i <= word.length; i++) {
    console.log(i)
    reversedWord = word.substring(i)
    return reversedWord  
  }
}

console.log(reverse("Neel"))