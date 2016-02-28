//// Project 1 - Dynamic sketch.

String title="Project #1 -- Zoog chases the gold, while Darth chases Zoog";
String author="Bruce Alan Martin; 2016/2/29";

//// GLOBAL DECLARATIONS ////
float horizon;

// Position & speed of creatures, etc.
float xDarth,yDarth, dxDarth,dyDarth;
float xZoog,yZoog, dxZoog,dyZoog;
float xDog,yDog, dxDog,dyDog;
float xGold,yGold;
float xSun,ySun;


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
  background( 200,200,255 );    // blue sky
  fill( 150,250,150 );          // green grass
  rect( 0,horizon, width, height*3/4 );
  // ++++ ADD CODE HERE +++
}

//// SHOW:  display the creatures, etc.
void show() {
  // ++++ ADD CODE HERE +++
}

//// ACTION:  move the creatures, etc.
void action() {
  // ++++ ADD CODE HERE +++
}

//// MESSAGES:  display titlee, author, messages
void credits() {
  fill(0);
  text( title, width/3, 20 );
  text( author, 10, height-10 );
  // ++++ ADD CODE HERE +++
}

