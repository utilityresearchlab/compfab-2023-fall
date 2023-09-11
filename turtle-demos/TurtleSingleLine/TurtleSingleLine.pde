// TurtleSingleLine
// Draws a straight line of distance 50

import Turtle.*;

// The Turtle
Turtle t;

// The distance for movement
int moveDistance = 50;

void setup() {
  size(900,900);
  
  background(0);
  stroke(255);
  strokeWeight(2);
  
  // Set-up Turtle
  t = new Turtle(this); 
  
  // NO LOOPING - only one draw iteration
  noLoop();
}

void draw() {
   t.forward(moveDistance);
}
