import Turtle.*;

int size = 50;

Turtle t;

void setup() {
  size(900,900);
  background(0);
  
  stroke(255);
  strokeWeight(1);
  
  t = new Turtle(this); 
  frameRate(90);
}

void draw() {
  float randMoveDist = random(5, 5*size);
  float randAngleDist = random(-90, 90);
  int randDir = round(random(0, 1));
  t.push();
  if (randDir == 1) {
    t.forward(randMoveDist);
    t.right(randAngleDist);
    t.forward(randMoveDist);
  } else {
  t.back(randMoveDist);
  t.left(randAngleDist);
  t.back(randMoveDist);
  }
  t.pop();
  // t.drawTurtle();
}
