// Return longest word from array
  // write method that takes an array as a params
    // look at each word in the array
      // id how long the word is
      // add the value to new array
      // id next word in array
    // when all words are id'd
      // look at the new array of values
      //

// GOAL: return longest string from array
// STEPS:
//   method that takes in an array as a parameter
//   look at the first item in the list
//     identify how long the string is
//       store item as key
//       store item length as value
//   move on to the second item in the list
//     repeat steps
//     store key / value
//   do this until all strings have been id'd and stored

//   next, look at the values in data structure
//   pick highest value
//   return the key that corresponds to the highest value

// sample arrays
var greeting = ["Hey, there", "Welcome", "Come on in!"];

var goodbye = ["See you", "Peace", "Have a good one!", "Get out of here!"];

var smallTalk = ["Interesting weather we're having, no?", "blah blah blah", "What are you up to?"];

// find longest phrase
function findLongest(phrases) {

  var longest = phrases.sort(
    // sort
      function(first, second) {
        return second.length - first.length;
  })

  return console.log(longest[0]);
}

var guestList = {};
guestList.firstName = "Neel";
guestList.lastName = "Gupta";
guestList.age = 24;

console.log(guestList);
// console.log(guestList.age);

function checkList(inputName, inputAge) {
  var i = 0;
  console.log(i);
  // name checker
  for (var name in guestList) {
      if (inputName == guestList.firstName) {
        console.log("Name Input: " + inputName);
        console.log("Match? " + true);
        // return true;
      }
      else {
        console.log("Match? " + false);
        // return false;
      }
  }

  // age checker
  for (var age in guestList) {
    if (inputAge == guestList.age) {
      console.log("Age Input: " + inputAge);
      console.log("Match? " + true);
    }
    else {
      console.log("Match? " + false);
    }
  }
}

checkList("Neel", 23);
// checkList("Nel", 25);


// Test code
// console.log("Greetings: " + greeting);
// console.log("Goodbyes: " + goodbye);
// console.log("Small Talk: " + smallTalk);

// console.log("Longest Greeting: ");
// findLongest(greeting);

// console.log("Longest Goodbye: "); 
// findLongest(goodbye);

// console.log("Longest Small Talk: ");
// findLongest(smallTalk);

