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
  // Initial setup of orientation
  t.right(32);
  int numBoxes = 100;
  for (int i = 0; i < numBoxes; i += 1) {
    float l = random(10, 100);
    float w = random(10, 100);
    float startX = random(0, 0.9 * width);
    float startY = random(0, 0.9 * height);
    float spacingY = random(1, 10);
    int numRects = round(random(1, 10));
    drawOrthoBoxLines(startX, startY, numRects, l, w, spacingY);
  }
}

void drawOthroRect(float l, float w) {
  for (int i = 0; i < 4; i += 1) {
    t.forward((i % 2 == 0) ? l : w);
    t.right(90);
  }
}

void drawOrthoBoxLines(float startX, float startY, int numRects, float l, float w, float spacingY) {
  for (float i = 0; i < numRects; i += 1) {
    t.penUp();
    t.goToPoint(startX, startY);
    t.penDown();
    drawOthroRect(l, w);
    startY += spacingY;
  }   
}
