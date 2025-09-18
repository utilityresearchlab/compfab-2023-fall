import Turtle.*;

Turtle t;  
int sideLength = 15;

void setup() {
  size(800, 800);
  frameRate(120);
  t = new Turtle(this);
  noLoop();
  t.left(30);
  t.penUp();
  //t.goToPoint(0, 2 * sideLength);
  t.penDown();
}

void drawHex(float l) {
  t.left(60);
  for (int i = 0; i < 6; i += 1) {
    t.forward(l);
    t.right(60);
  }
}

void draw() {
  // Set colors
  background(0);
  stroke(255);
  noFill();
  int rowCount = round(height / (2 * sideLength));
  int hexCount = round(width / (2 * sideLength));
  for (int i = 0; i < rowCount; i += 1) {
    int startX = 0;
    int startY = i * 2*sideLength;
    t.penUp();
    t.goToPoint(startX, startY);
    t.penDown();
    for (int j = 0; j < hexCount; j += 1) {
      drawHex(random(4,sideLength));
      // Shift over 2 * radius of hex
      t.penUp();
      
      if (j % 2 == 0) {
        t.goToPoint(
          t.getX() + 2.5*sideLength, 
          t.getY() + sideLength);
      } else {
        t.goToPoint(
          t.getX() + 2.5*sideLength, 
          t.getY() - sideLength);
      }
      t.penDown();
    }
  }
}
