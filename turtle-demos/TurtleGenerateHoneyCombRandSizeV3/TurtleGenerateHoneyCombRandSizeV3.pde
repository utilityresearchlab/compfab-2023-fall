// Generates a Honeycomb using turtle + draw hex
import Turtle.*;

Turtle t;  

void setup() {
  size(800, 800);
  frameRate(120);
  t = new Turtle(this);
  noLoop();
}

void draw() {
  // Set colors
  background(0);
  stroke(255);
  noFill();
  float sideLength = 30;
  // Initial setup of orientation
  t.right(30);
   
  for (float j = 0; j < (height / sideLength) + 1; j += 1) {
    float startY = (j + 1) * ((sqrt(3) / 2.0) * sideLength);
    float startX = 0;
    if (j % 2 == 1) {
      // l/2 for 30-60=90 triangle  + l
      startX = (3.0 / 2.0) * sideLength;
      println(startX);
    }

    // Draw hex across the width
    while(startX < width) {
        float randSize = random(4, sideLength);
        t.penUp();
        t.goToPoint(startX, startY);
        t.penDown();
        drawHex(randSize);
        startX += 3 * sideLength;
    }
  }
}


void drawHex(float l) {
  for (int i = 0; i < 6; i += 1 ) {
    t.forward(l);
    t.right(60);
  }
}
