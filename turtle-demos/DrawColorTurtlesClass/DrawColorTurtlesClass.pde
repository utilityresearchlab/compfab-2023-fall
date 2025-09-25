import Turtle.*;

int size = 50;

ColorTurtle t1;
ColorTurtle t2;

void setup() {
  size(900,900);
  background(0);
  
  stroke(255);
  strokeWeight(5);
  
  // Turtle t, color c, int size
  t1 = new ColorTurtle(new Turtle(this), color(255, 0, 0), 10);
  t2 = new ColorTurtle(new Turtle(this), color(0, 255, 0), 6);
}

void draw() {
  t1.draw();
  t2.draw();
}
