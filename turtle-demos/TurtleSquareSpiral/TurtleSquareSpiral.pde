import Turtle.*;

int size = 0;
int maxSize = 500;

Turtle t;

void setup() {
  size(900,900);
  background(0);
  stroke(255);
  strokeWeight(1);
  frameRate(30); 
  
  t = new Turtle(this); 
}

void draw() {
  if (size == maxSize) {
    // Stop drawing at max size
    return;
  }
   t.forward(size);
   t.right(91);
   size += 1;
}
