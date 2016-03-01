////Project 1-Dynamic sketch
////Hero chases gold

String hero="Ulkatron";

//Declare sun variable to move
float sunX = 50;

void setup() {
  //Set the size of the window
  size(600, 400);
}

void draw() {
  //Draw a blue sky background
  background(3, 225, 252);
  
  //Draw a light green grass
  noStroke();
  fill(3, 252, 71);
  rectMode(CORNERS);
  rect(0, 200, 600, 400);
  
  //Draw a yellow sun
  noStroke();
  fill(240, 233, 17);
  ellipseMode(CENTER);
  ellipse(sunX, 50, 40, 40);
  sunX = sunX+2;
  if(sunX > width) {
    sunX = 0;
  }
  //Draw a tree with brown trunk
  noStroke();
  fill(185, 96, 11);
  rectMode(CORNERS);
  rect(460, 130, 480, 200);
  fill(26, 167, 2);
  ellipseMode(CENTER);
  ellipse(470, 100, 50, 100);
  
  //Draw a house
  noStroke();
  fill(242, 83, 120);
  rectMode(CORNERS);
  rect(100, 120, 250, 200);
  triangle(80, 120, 270, 120, 176, 50);
  
  //Draw windows on the house
  stroke(162);
  fill(255);
  rectMode(CENTER);
  rect(130, 140, 30, 30);
  rect(210, 140, 30, 30);
  
  //Draw a door on the house
  stroke(162);
  fill(193, 138, 240);
  rectMode(CORNERS);
  rect(155, 120, 190, 200);
  
  //Draw gold nugget
  noStroke();
  fill(252, 147, 8);
  ellipseMode(CENTER);
  ellipse(360, 250, 60, 30);
  
  //Set CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  //Head
  stroke(0);
  fill(250, 233, 187);
  rect(173, 161, 30, 30);
  
  //Body
  stroke(0);
  fill(19, 60, 160);
  ellipse(173, 200, 45, 45);
  
  //Arms
  stroke(0);
  line(156, 183, 130, 183);
  line(187, 183, 212, 183);
  
  //Legs
  line(156, 215, 156, 250);
  line(190, 215, 192, 250);
  
  //Antenna
  stroke(0);
  fill(250, 3, 3);
  ellipse(172, 129, 5, 5);
  line(172, 132, 172, 145);
  
  //Eyes
  stroke(0);
  fill(255);
  ellipse(167, 156, 10, 10);
  ellipse(180, 156, 10, 10);
  
  fill(0, 0, 255);
  point(180, 156);
  point(166, 156);
  
  //Mouth
  line(166, 170, 180, 170);
}
