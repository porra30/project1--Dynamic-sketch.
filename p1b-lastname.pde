//// Project 1b - Dynamic sketch.
////   Hero chases golden egg, monster chases hero.

String title="Project #1 -- Zoog chases the gold, while Darth chases Zoog";
String author="Bruce Alan Martin; 2016/2/29";

//// GLOBAL DECLARATIONS ////
float horizon;
int score=0;

// Position & speed of creatures, etc.
float xDarth, yDarth, dxDarth, dyDarth;
float xZoog, yZoog, dxZoog, dyZoog;
float xDog, yDog, dxDog, dyDog;
//
float xGold=0, yGold=0;
float xSun=50, ySun=50, dxSun=2;


//// SETUP ////
void setup() {
  size( 640, 480 );
  horizon=  height/4;
}

//// NEXT FRAME:  scene, show, action, messages ////
void draw() {
  scene();
  show();
  action();
  credits();
}

//// SCENE:  sky, sun, tree, house. ////
void scene() {
  background( 150, 200, 240 );            // blue sky
  noStroke();
  fill( 240, 200, 50 );                   // yellowish sun.
  ellipse( xSun, ySun, 30, 30 );
  fill( 50, 200, 100 );                   // greenish grass
  rect( 0, horizon, width, height*3/4 );
  // ++++ ADD CODE HERE +++
}

//// SHOW:  display the creatures, etc.
void show() {
  // Gold.
  if (yGold > horizon) { 
    fill( random(240,250), random(150,180), random(0,100) );
    stroke( random(250), random(150), 0 );
    ellipse( xGold,yGold, 50+random(-3,+3), 30+random(-1,+1) );
  }
  // ++++ ADD CODE HERE +++
}

//// ACTION:  move the creatures, etc.
void action() {
  // Sun moves across sky.  
  xSun =  xSun + dxSun;
  // Sunset.
  if (xSun > width) {
    xSun=  20;
    ySun=  random( 20, horizon-20 );
    dxSun=  random( 0.5, 4 );
  }
  // ++++ ADD CODE HERE +++
}

//// MESSAGES:  display title, author, messages
void credits() {
  // Title, author.
  fill(0);
  text( title, width/3, 20 );
  text( author, 10, height-10 );
  // Display the score (if any).
  if (score>0) {
    text( "Score:  "+score, width*3/4, 40 );
  }
  // ++++ ADD CODE HERE +++
}


//// EVENT HANDLERS ////
void mouseClicked() {
  if (mouseY>horizon) {
      xGold=  mouseX;
      yGold=  mouseY;
  }
}

