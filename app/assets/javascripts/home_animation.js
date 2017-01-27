var cW = 600;
  var cH = 500;
  size(600, 500);
  noStroke();

  var leftMin = 280;
  var rightMin = 330;
  var smokeYMin = 210;
  var leftX = leftMin;
  var rightX = rightMin;
  var sunRadius = 40;
  var smokeY = smokeYMin;

  draw = function() {

  // blue sky
  background(184, 236, 255);

  // The land, blocking half of the sun
  fill(76, 168, 67);
  rect(0, 400, 600, 100);

  //Sun
  fill(255, 170, 0);
  ellipse(400, 200, sunRadius, sunRadius);

  //House
  stroke(0,0,0);
  fill(255,255,1);
  rect(200, 300, 150, 100);
  //Chimney
  rect(225,220, 25, 60);
  //Roof
  triangle(200, 300, 350, 300, 275, 250);
  //Line seperating house
  line(200,300, 350, 300);
  //Door
  rect(250, 320, 50, 80);
  //Lines on Door
  // line(250, 350, 300, 350);
  ellipse(290, 355, 5, 5);

    noStroke();
  //Another smoke
  // if (smokeY <= smokeYMin / 4){
  //   //Another Smoke from chimney
  //   draw =
  //   ellipse(220, smokeY, 30, 30);
  //   ellipse(230, smokeY, 35, 35);
  //   ellipse(240, smokeY, 30, 30);
  // }

  // clouds
  fill(255, 255, 255);
  // left cloud
  ellipse(leftX, 150, 126, 97);
  ellipse(leftX+62, 150, 70, 60);
  ellipse(leftX-62, 150, 70, 60);

  // right cloud
  ellipse(rightX, 100, 126, 97);
  ellipse(rightX+62, 100, 70, 60);
  ellipse(rightX-62, 100, 70, 60);

    leftX--;
    rightX++;


  if (leftX < 0){
    leftX = cW;
  }

  if (rightX > cW){
    rightX = 0;
  }


  //Smoke from chimney
  fill(209, 209, 224);
  ellipse(220, smokeY, 30, 30);
  ellipse(230, smokeY, 35, 35);
  ellipse(240, smokeY, 30, 30);

  smokeY -= 1;
  if (smokeY === 0)
  {
    smokeY = smokeYMin;
  }

  };
