//// Project 1x - Objects.

String title="Project #1x (start using objects)";
String author="Bruce Alan Martin; 2016/2/29";

//// GLOBAL DECLARATIONS ////
float horizon;
int score=0;

Creature darth, mickey, rex;
Gold nugget=  new Gold();

// Position & speed of creatures, etc.
//
float xSun=50, ySun=50, dxSun=2;


//// SETUP ////
void setup() {
  size( 640, 480 );
  horizon=  height/4;
  // Instantiate the hero.
  mickey=  new Creature();
  mickey.x=  50;
  mickey.y=  horizon+50;
  mickey.w=40;
  mickey.h=60;
  // Instantiate the monster.
  darth=  new Creature();
  darth.x=  width-50;
  darth.y=  height-50;
  darth.w=60;
  darth.h=90;
  darth.r=100;
  darth.b=250;
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
  // ++++ ADD CODE HERE +++
  nugget.show();
  mickey.show();
  darth.show();
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
  // 
  
  mickey.move();
  darth.move();
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
    nugget.x=  mouseX;
    nugget.y=  mouseY;
  }
}
void keyPressed() {
  if (key == 'q') {
    exit();
  }
}



class Creature
{
  // PROPERTIES //
  float x=100, y=100, dx=3, dy=2;
  float w=400, h=60;
  float r=255, g=0, b=0;
  // METHODS //
  void move() {
    if (x>width || x<0) { 
      dx= -dx;
    }
    if (y>height || y<horizon) { 
      dy= -dy;
    }
    x=  x + dx;
    y=  y + dy;
  }
  void show() {
    fill( r, g, b );
    rect( x, y, w, h );
    ellipse( x+w/2, y-w/2, w/2, w/2 );
  }
}

class Gold {
  float x=0, y=0;
  void show() {
    // Gold.
    if (y > horizon) { 
      fill( random(240, 250), random(150, 180), random(0, 100) );
      stroke( random(250), random(150), 0 );
      ellipse( x, y, 50+random(-3, +3), 30+random(-1, +1) );
    }
  }
}
