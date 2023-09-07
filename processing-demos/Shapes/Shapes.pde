/* Shapes
 * Draws green rectangle with a black outline and 
 * a yellow ellipse with black outline
 */
void setup() {
  // Setup code - gets called once at 
  println("Set-up");  
  // Set the window size (width, height)
  size(600, 600);
}

void draw() {
  // Set background gray
  background(200, 200, 200);
  
  // Set stroke size
  strokeWeight(2);
  
  // Set stroke color
  stroke(0, 0, 0);
  
  // Set fill color green
  fill(100, 200, 100);
  
  // Draw a rect starting at (200, 150) with width=100, height=200
  rect(200, 150, 100, 200);
  
  // Set fill color to be yellow
  fill(255, 255, 0);
  
  // Draw an ellipse at (400, 400) with width=30, height=100
  ellipse(400, 400, 80, 100);
}
