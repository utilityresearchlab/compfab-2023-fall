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
  strokeWeight(1);
  
  // Set-up Turtle
  t = new Turtle(this); 
  
  // Slow frame rate
  frameRate(2); 
  
  // NO LOOP
  noLoop();
}

void draw() {
  // Use loop to repeat operation
  for (int i = 0; i < 4; i++) {
    // Move forward
    t.forward(moveDistance);
  
    // Rotate 90 degrees
    t.right(90);
  }
}
