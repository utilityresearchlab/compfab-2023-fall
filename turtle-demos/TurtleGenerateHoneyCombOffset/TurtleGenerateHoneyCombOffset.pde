import Turtle.*;

Turtle t;

void setup() {
  size(500, 500);
  background(0);
  stroke(255);
  t = new Turtle(this);
  noLoop();
  t.penUp();
  t.goToPoint(0, 0);
  t.penDown();
}


float l = 20;
void draw() {
 float b = l * sin(radians(60));

 for (int j = 0; j < height / l; j += 1) {
   float x = 0;
   float y = 0;
   if (j % 2 == 0) {
    // even row
    stroke(255);
    x = -l;
    y = j * (2 * l);

   } else {
     // odd row
     //stroke(255, 0, 0);
    x =  b - l;
    y = j * (2*l); 
   }  
   t.penUp();
   t.goToPoint(x, y);
   t.penDown();
   for (int i = 0; i < width / (2 * b); i += 1){
     drawHex(l); 
     t.penUp();
     t.setX(t.getX() + 2 * b);
     t.penDown();
   }
 }
}
  
void drawHex(float l) {
  for (int i = 0; i < 6; i += 1) {
    t.forward(l);
    t.right(60);
  }
  
}
  
