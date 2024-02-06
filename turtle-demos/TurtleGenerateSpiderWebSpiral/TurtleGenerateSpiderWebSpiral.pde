
import Turtle.*;

Turtle t;

void setup() {
  size(700, 700);
  frameRate(120);
  t = new Turtle(this);
  noLoop();
}

void draw() {
  // Set colors
  background(0);
  stroke(255);
  noFill();
  
  // Draw the spiral
  int minRadius = 10;
  float dist = 0;
  for(int j = 0; j < 10*360; j += 1) {
      dist += 0.1;
      // Draw the lines connecting the different circles
      strokeWeight(1);
      float rad = radians(j);
      float radius = minRadius + dist;
      float cX = width / 2;
      float cY = height / 2;
      float endX = cX + radius * cos(rad);
      float endY = cY + radius * sin(rad);
      // Move the turtle to the next point, drawing a line between the last location and the new one
      t.goToPoint(endX, endY);
      println(endX, endY);
    }
    
  // Draw the lines connecting the different circles
  for(int angle = 0; angle < 360; angle += random(5, 20)) {
    strokeWeight(1);
    float radius = random(dist, 0.99 * dist);
    float cX = width / 2;
    float cY = height / 2;
    float endX = cX + getPolarX(radius, angle);
    float endY = cY + getPolarY(radius, angle);
    // Move to center point, then draw a line out to the circle point at angle degrees with radius 
    t.penUp();
    t.goToPoint(cX, cY);
    t.penDown();
    t.goToPoint(endX, endY);
  }
}

// Theta is in degrees
float getPolarX(float radius, float theta) {
  return radius * cos(radians(theta));
}

// Theta is in degrees
float getPolarY(float radius, float theta) {
 return radius * sin(radians(theta)); 
}
