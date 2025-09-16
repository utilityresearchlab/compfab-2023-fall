import Turtle.*;

Turtle t;

void setup() {
  size(500, 500);
  stroke(255);
  background(0);
  noLoop();
  t = new Turtle(this);
  frameRate(120);
}


void draw() {
  float radius = random(0.001, 0.005);
  float dist = 0.1;
  int maxRotations = 20;
  for (int j = 0; j < maxRotations; j += 1) {
    t.setHeading(0);
    t.forward(1);
    t.left(7*j);
    t.forward(radius);
    float scalar = 1.00;
    for (float i = 0; i < 1080; i += 1) {
      t.forward(scalar * dist + i/360);
      t.left(1);
      scalar += 0.005;
    }
    if (j < maxRotations - 1) {
      t.penUp();
      t.goToPoint(width / 2 , height /2);
      //t.drawTurtle();
      t.penDown(); 
    }
  }
  t.penDown();
  t.left(45);
  t.forward(maxRotations * 3);
}
