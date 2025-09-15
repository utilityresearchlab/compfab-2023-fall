// Generates a orthoboxes using turtle 
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
  t.right(45);
  
  float l = 60;
  float w = 100;
  float startX = width / 2;
  float startY = height / 4;
  float spacingY = 5;
  int numRects = 50;
  drawOrthoBoxLines(startX, startY, numRects, l, w, spacingY);
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
