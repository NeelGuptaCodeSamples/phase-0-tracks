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



function Car(wheels, year, model) {
  console.log("New car:", this);

  this.wheels = wheels;
  this.year = year;
  this.model = model;

  this.drive = function() { console.log("Now driving..."); };

  console.log("INITIALIZATION OF CAR COMPLETE");
}

var new_car = new Car(4, 1947, "Mercedes");
new_car.drive();
console.log(new_car);

var another_car = new Car(2, 1974, "BMW");
another_car.drive();
console.log(another_car);

var cars = [new_car, another_car];

// keys
// console.log(Object.keys(new_car));
var keys = Object.keys(new_car);


for (var i = 0; i < keys.length; i++) {
  console.log(new_car[keys[i]]);
}

for (var i = 0; i < keys.length; i++) {
  console.log(keys[i]);
}

