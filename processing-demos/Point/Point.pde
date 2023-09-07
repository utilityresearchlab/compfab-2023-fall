/* Point
 * Draws a red point in the center of the screen
 *
 */
void setup() {
  // Setup code - gets called once at 
  // the start of the app
  println("Set-up");
  
  // Set the window size (width, height)
  size(600, 600);
}


void draw() {
  // Set stroke size
  strokeWeight(20);
  
  // Set stroke color red
  stroke(255, 0, 0);
  
  // Draw point at center of the screen
  point(width/2, height/2);
}
