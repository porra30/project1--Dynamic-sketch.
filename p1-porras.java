////Anthony Porras- Project 1-Dynamic sketch
////Hero chases gold

String title="Project 1- Dynamic sketch";
String author=  "Anthony Porras";
String score= "Score";

int sum=0;

//float xUlk=173, yUlk=161;
float xUlk=173, yUlk=161;
float xGold=360, yGold=250;

//Declare sun variable to move
float sunX = 50;
float horizon;

//Global Coordinates
float x=0;
float y=0;
float dx=1;
float dy=1;

void setup() {
  //Set the size of the window
  size(800, 600);
  horizon= height/4;
  frameRate(30);
}

void draw() {
  //Draw a blue sky background
  background(3, 225, 252);
  
  scene();
  nugget();
  hero();
  action();
}

////SCENE: grass, house, etc.
void scene() {
  //Draw a light green grass
  noStroke();
  fill(3, 252, 71);
  rectMode(CORNERS);
  //-- rect(0, 200, 600, 400);
  rect(0, horizon, width, height);

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
  
  fill(0);
  text(title, width/3, 20);
  text(author, 10, height-10);
  text(score, 170, height-10);
  text(sum, 210, height-10);
}

//Show nugget
void nugget() {
  //Draw gold nugget
  noStroke();
  fill(random(252, 147), 150, random(150));
  ellipseMode(CENTER);
  ellipse(xGold, yGold, 60, 30);


  //Set CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);
}

//Show the hero
void hero() {
  //Head
  stroke(0);
  fill(250, 233, 187);
  rect(x, y-13, 30, 30);

  //Body
  stroke(0);
  fill(19, 60, 160);
  ellipse(x, y+26, 45, 45);
  fill(255, 247, 3);
  text("Ulkatron", x-23, y+28);

  //Arms
  stroke(0);
  line(x-17, y+10, x-43, y+10);
  line(x+14, y+10, x+39, y+10);

  //Legs
  line(x-17, y+42, x-17, y+77);
  line(x+17, y+42, x+19, y+77);

  //Antenna
  stroke(0);
  fill(250, 3, 3);
  ellipse(x, y-44, 5, 5);
  line(x, y-39, x, y-28);

  //Eyes
  stroke(0);
  fill(255);
  ellipse(x-7, y-17, 10, 10);
  ellipse(x+7,y-17, 10, 10);

  fill(0, 0, 255);
  point(x+7, y-17);
  point(x-7, y-17);

  //Mouth
  line(x-7, y-3, x+7, y-3);
}
  
void action(){
   if(x>width) {
     x=0;
     y=0;
     dx=1;
     dy=1;
   }
   
   x= x + (xGold-x) / 30;
   y= y + (yGold-y) / 30;
   
   //Ulkatron found gold
   if( dist(x, y, xGold, yGold) < 30)
   {
     sum=sum + 100;
     restart();
   }
   else{
     sum=sum - 1;
   }
   
}

void restart() {
  //x= 50;
  //y= random(horizon, height);
  xGold=random(0, width);
  yGold=random(horizon, height);
  
  
}

void mousePressed() {
  xGold= mouseX;
  yGold= mouseY;
  restart();
}
