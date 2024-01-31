
int maxRadius = 250;
void setup() {
  size(500, 500);
  frameRate(120);
  noLoop();
}


void draw() {
  // Set colors
  background(0);
  stroke(255);
  noFill();
  
  // Draw the circles wit various radius
  int maxDiameter = 0;
  for(int i = 0; i < 2 * maxRadius; i += random(10, 30)) {
    circle(width/2, height/2, i);
    maxDiameter = i;
  }
  
  // Draw the lines connecting the different circles
  for(int j = 0; j < 360; j += random(5, 20)) {
    strokeWeight(1);
    float rad = radians(j);
    float radius = random(maxDiameter / 2.2, maxDiameter / 2);
    float cX = width / 2;
    float cY = height / 2;
    float endX = cX + radius * cos(rad);
    float endY = cY + radius * sin(rad);
    println(endX, endY);
    line(cX, cY, endX, endY);
  }
}
