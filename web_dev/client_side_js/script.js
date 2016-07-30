console.log("Hello, world");

var images = document.getElementsByTagName("img");

// image1.style.border = "10px solid black";

function addBorder(event) {
  event.target.style.border = "15px solid black";
};

var image1 = images[0];

image1.addEventListener("click", addBorder);

var imgs_length = images.length;

console.log(imgs_length);

for (var i = 0; i < imgs_length; i++) {
  console.log(i);
  images[i].addEventListener("click", addBorder);
}