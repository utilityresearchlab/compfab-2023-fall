
void setup() {
  size(700, 700);
  frameRate(120);
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
  
  // Set up to draw a shape of vertices in processing
  beginShape();
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
      // create a point that is connected to the previous point using a curve
      curveVertex(endX, endY);
      println(endX, endY);
    }
    
    // Finish the shape being drawn
    endShape();
    
  // Draw the lines connecting the different circles
  for(int i = 0; i < 360; i += random(5, 20)) {
    strokeWeight(1);
    float radius = random(0.9 * dist, 0.99 * dist);
    float cX = width / 2;
    float cY = height / 2;
    float endX = cX + getPolarX(radius, i);
    float endY = cY + getPolarY(radius, i);
    line(cX, cY, endX, endY);
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
