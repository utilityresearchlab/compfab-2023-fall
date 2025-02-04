// Generates a Honeycomb using turtle and partial hexagons
import Turtle.*;

Turtle t;  

void setup() {
  size(800, 800);
  frameRate(120);
  t = new Turtle(this);
  noLoop();
  // Set turtle to face 0 degrees (to the right)
  t.setHeading(0);
}

void draw() {
  // Set colors
  background(0);
  stroke(255);
  noFill();
  int sideLength = 30;
  float hexHeight = sqrt(3) * sideLength;
  
  //float shiftR = 0.5* tan(radians(30)) * sideLength;
  int rowCount = round(height / hexHeight) + 1;

  for (int i = 0; i < rowCount; i += 1) {
    float startX = 0;
    float startY = i * sqrt(3) * sideLength;
    t.penUp();
    t.goToPoint(startX, startY);
    t.penDown();
    
    // Randomly generate width count of hexes
    int hexCount = ceil(width / (2.0 * sideLength));
    t.setHeading(30);
    for (int j = 0; j < hexCount; j += 1) {
      // Top row
      drawTopHalfHex(sideLength);
      t.left(120);
      t.forward(sideLength);
      t.left(60);
    }
    
    // Reset to start position
    t.penUp();
    t.goToPoint(startX, startY);
    t.penDown();

   // Draw bottom row
   for (int j = 0; j < hexCount; j += 1) {
      // Bottom Row
      drawBottomHalfHex(sideLength);
      t.right(120);
      t.forward(sideLength);
      t.right(60);
    }
  }
}

// Draws the top half of hexagons /--\__
void drawTopHalfHex(int l) {
  for (int i = 0; i < 3; i += 1) {
    t.forward(l);
    t.right(60);
  }
}

// Draws the bottom half of hexagons \_/--
void drawBottomHalfHex(int l) {
  t.setHeading(150);
  for (int i = 0; i < 3; i += 1) {
    t.forward(l);
    t.left(60);
  }
}
