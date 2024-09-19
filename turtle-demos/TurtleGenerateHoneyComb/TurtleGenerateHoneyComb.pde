// Generates a Snail Shell using turtle + polar coordinates
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

void drawHex(int l) {
  t.left(60);
  t.forward(l);
  t.right(60);
  t.forward(l);
  t.right(60);
  t.forward(l);
  t.right(60);
  t.forward(l);
  t.right(60);
  t.forward(l);
  t.right(60);
  t.forward(l);
  t.right(60);
  t.forward(sideLength);
  t.right(60);
  //t.drawTurtle();
}

void draw() {
  // Set colors
  background(0);
  stroke(255);
  noFill();
  //float shiftR = 0.5* tan(radians(30)) * sideLength;
  int rowCount = round(height / (2 * sideLength));
  int colCount = round(width / (1.5 * sideLength));
  for (int i = 0; i < rowCount; i += 1) {
    int startX = 0;
    int startY = i * 2 * sideLength;
    t.penUp();
    t.goToPoint(startX, startY);
    t.penDown();
    // Randomly generate width count of hexes
    int hexCount = colCount;  //round(random(4) * colCount);
    for (int j = 0; j < hexCount; j += 1) {
      drawHex(sideLength);
      // Shift over
      t.penUp();    
      // TODO: calculation of hex radius 
      if (j % 2 == 0) {
        t.goToPoint(
          t.getX() + 2.5 * sideLength, 
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

// Theta is in degrees
float getPolarX(float radius, float theta) {
  return radius * cos(radians(theta));
}

// Theta is in degrees
float getPolarY(float radius, float theta) {
 return radius * sin(radians(theta)); 
}
