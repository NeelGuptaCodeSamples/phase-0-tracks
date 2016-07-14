var colors = ["Blue", "Green", "Red", "Purple"];

var horses = ["Ed", "James", "Bill", "Matt"];

colors.push("Yellow");

horses.push("John");

console.log(colors);

console.log(horses);

// Use two arrays to create an object
// Key is horse name
// value is color

var horseColors = {};

for (var i = 0; i < horses.length; i++) {
  horseColors[horses[i]] = colors[i];
}

// console.log(colors);

// console.log(horses);

console.log(horseColors);