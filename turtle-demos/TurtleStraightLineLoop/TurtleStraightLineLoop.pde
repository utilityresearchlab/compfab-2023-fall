// TurtleSingleLine
// TurtleStraightLineLoop
// Move the turtle forward and repeatedly 
// draws a line of distance 10 
import Turtle.*;

// The Turtle
Turtle t;

// The distance for movement
int moveDistance = 1;

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
   t.forward(moveDistance);
}
