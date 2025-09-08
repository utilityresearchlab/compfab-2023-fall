
float INITIAL_RADIUS = 10;
float MAX_DELTA_RADIUS = 10;

int MIN_NUM_CIRCLES = 3;
int MAX_NUM_CIRCLES = 30;

// State of the mouse
boolean didClickMouse = false;

void setup() {
  size(600, 600);
  
  // Set White Bg
  background(255);
}


void draw() {
  // On
  if (didClickMouse) {
    int numCircles = round(random(MIN_NUM_CIRCLES, MAX_NUM_CIRCLES));
    drawTreeCircles(mouseX, mouseY, numCircles, INITIAL_RADIUS, MAX_DELTA_RADIUS);
    didClickMouse = false;
  }
}

// Called once per click, regardless of the mouse button
void mousePressed() {
  didClickMouse = true;
}

// Handles keypresses
void keyPressed() {
  // Clears the background when pressed
  if (key == 'd') {
    background(255);
  }
}

// Draws a series of circles in increasing diameter
void drawTreeCircles(int x, int y, int numCircles, float startRadius, float maxDeltaRadius) {
  noFill();
  float r = startRadius;
  for (int i = 0; i < numCircles; i += 1) {
    circle(x, y, 2 * r); 
    // update radius
    r += random(1, maxDeltaRadius);
 }
}
