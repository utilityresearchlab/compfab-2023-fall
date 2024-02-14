import Turtle.*;

int size = 50;

Turtle t;

void setup() {
  size(900,900);
  background(0);
  
  stroke(255);
  strokeWeight(1);
  
  t = new Turtle(this); 
}

void draw() {
  float randMoveDist = random(5, 5*size);
  float randAngleDist = random(-180, 180);
  t.push();
  t.forward(randMoveDist);
  t.right(randAngleDist);
  t.forward(randMoveDist);
  t.pop();
  // t.drawTurtle();
}
