import Turtle.*;

Turtle t; 

void setup() {
  size(800, 800);
  background(0);
  stroke(255);
  strokeWeight(2);
  t = new Turtle(this);
  //noLoop();
}

float distance = 10;

void draw() {
  t.forward(distance);
  t.right(89);
  distance += 12;
  distance %= 100;
}
