// TurtleSquare
// Draws a Square with side length <moveDistance>

import Turtle.*;

// The Turtle
Turtle t;

// The distance for movement
int moveDistance = 120;

void setup() {
  size(900,900);
  
  // Set up background and colors
  background(0);
  stroke(255);
  strokeWeight(10);
  
  // Set-up Turtle
  t = new Turtle(this); 
  
  // Slow frame rate
  frameRate(30); 
}

void draw() {
  // Move forward
  t.forward(moveDistance);
  // Rotate 90 degrees
  t.right(90)
}
