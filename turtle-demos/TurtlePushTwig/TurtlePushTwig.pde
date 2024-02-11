import Turtle.*;

int size = 50;

Turtle t;

void setup() {
  size(900,900);
  background(0);
  
  stroke(255);
  strokeWeight(5);
  
  t = new Turtle(this); 
  noLoop();
}

void draw() {
  for (int i = 0; i < 5; i += 1) {
     t.forward(size);
     t.push();
     t.right(55);
     t.forward(size);
     t.pop();
     t.push();
     t.left(45);
     t.forward(size);
     t.pop();
     // t.drawTurtle();
  }
}
