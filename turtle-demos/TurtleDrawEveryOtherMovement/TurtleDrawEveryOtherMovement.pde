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

int counter = 0;

void draw() {
  if (counter % 2 == 0) {
    t.penUp();
  }
    t.left(30);
    t.forward(140); 
    t.drawTurtle();
  if (counter % 2 == 0) {
    t.penDown();
  }
  counter += 1;
}
