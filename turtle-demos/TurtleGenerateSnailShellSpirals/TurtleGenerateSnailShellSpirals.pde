// Generates a Snail Shell using turtle + polar coordinates
import Turtle.*;

Turtle t;  
int minRadius = 10;

void setup() {
  size(800, 800);
  frameRate(120);
  t = new Turtle(this);
  noLoop();
}

void draw() {
  // Set colors
  background(0);
  stroke(255);
  noFill();

  float dist = 0.05;

  int rotationCount = 20;
  // Repeat the spiral
  for (int i = 0; i < rotationCount; i += 1) {
    float baseRadius = random(1, 5);
    float startX = t.getX();
    float startY = t.getY();
    
    // Draw the sprial, but add deviation in the end angle to change shell edge.
    for(int j = 0; j < random(360, 362); j += 1) {
        // Draw the lines connecting the different circles
        strokeWeight(1);
        float rad = radians(j);
        float radius = baseRadius + i*j * dist + random(3, 3.5);
        float cX = width / 2;
        float cY = height / 2;
        float endX = cX + radius * cos(rad);
        float endY = cY + radius * sin(rad);
        
        // Move the turtle to the next point, drawing a line between the last location and the new one
        if (j == 0) {
          t.penUp();
          t.goToPoint(endX, endY);
          t.penDown();
        } else {
          t.goToPoint(endX, endY);
        } 
        println(endX, endY);
      }
      
      // skip drawing back to center on first time
      if (i == 0) {
        continue;
      }
      // Draw the line from the last spiral end to the current spiral end,
      // then return to the current spiral end
      float currX = t.getX();
      float currY = t.getY();
      t.goToPoint(startX, startY);
      t.goToPoint(currX, currY);
  }
  //t.goToPoint(width/2, height/2);
}

// Theta is in degrees
float getPolarX(float radius, float theta) {
  return radius * cos(radians(theta));
}

// Theta is in degrees
float getPolarY(float radius, float theta) {
 return radius * sin(radians(theta)); 
}
