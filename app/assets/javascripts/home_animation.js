var cW = 600;
var cH = 500;
size(600, 500);
noStroke();

var leftMin = 280;
var rightMin = 330;
var leftX = leftMin;
var rightX = rightMin;
var sunRadius = 40;

draw = function() {

//sky
background(184, 236, 255);

// The land, blocking half of the sun
fill(76, 168, 67);
rect(0, 400, 600, 100);

//Sun
fill(255, 170, 0);
ellipse(400, 200, sunRadius, sunRadius);

//House
stroke(0,0,0);
fill(255,255,255);
rect(200, 300, 150, 100);
//Chimney
rect(225,220, 25, 60);
//Roof
triangle(200, 300, 350, 300, 275, 250);
//Line seperating house
line(200,300, 350, 300);

noStroke();
//Smoke from chimney
ellipse(220, 210, 30, 30);
ellipse(230, 210, 35, 35);
ellipse(240, 210, 30, 30);

// clouds
// fill(255, 255, 255);
// // left cloud
// ellipse(leftX, 150, 126, 97);
// ellipse(leftX+62, 150, 70, 60);
// ellipse(leftX-62, 150, 70, 60);
//
// // right cloud
// ellipse(rightX, 100, 126, 97);
// ellipse(rightX+62, 100, 70, 60);
// ellipse(rightX-62, 100, 70, 60);
//
//   leftX--;
//   rightX++;
//
//
// if (leftX < 0){
//   leftX = cW;
// }
//
// if (rightX > cW){
//   rightX = 0;
// }

};
