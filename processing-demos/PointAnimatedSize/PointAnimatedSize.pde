
// Current Point Size
int counter = 0;

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
  counter += 1;
}
