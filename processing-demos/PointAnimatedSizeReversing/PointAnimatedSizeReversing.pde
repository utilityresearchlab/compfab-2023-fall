
// Current Point Size
int counter = 0;

// Max size for point
int maxCount = 100;

// Min size for point
int minCount = 0;

// Whether to increase the size or decrease
// isReversed == true -> decreasing size
// isReverse == false -> increasing size
boolean isReversed = false; 

void setup() {
  // Setup code - gets called once at 
  // the start of the app
  println("Set-up");
  size(600, 600);
  background(255, 255, 255);
}

// Called repeatedly (a loop)
// Handles all your apps logic 
void draw() {
  // clear the entire drawing with a white background
  background(255, 255, 255);
  
  // Set a stroke color of red -> RGB value = (255, 0, 0)
  stroke(255, 0, 0);

  // Sets the stroke weight (size) of what will be drawn
  // in our case it is a point
  strokeWeight(counter);

  
  point(width/2, height/2);
  

  if (counter == maxCount) {
    // reached max size, so reverse direction
    isReversed = true;
  } else if (counter == minCount) {
    // reached min size, so reverse direction
    isReversed = false;
  }
  
  // Update counter based on the direction we should be going
  if (isReversed) {
    counter -= 1;
  } else {
    counter += 1;
  }
}
