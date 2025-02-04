import Turtle.*;

int size = 0;
int maxSize = 500;

Turtle t;

void setup() {
  size(900,900);
  background(0);
  stroke(255);
  strokeWeight(1);
  t = new Turtle(this); 
  noLoop();
  // Rotate 30 at start
  t.right(30);
  
  // Move to 0,0
  t.penUp();
  //t.goToPoint(0, 0);
  t.penDown();
}

void draw() {
  float sideLength = 30;
  drawHex(sideLength);
  
  
}

void drawHex(float l) {
  for (int i = 0; i < 6; i += 1) {
    t.right(60);
    t.forward(l);
  } 
}
