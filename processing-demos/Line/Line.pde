/* Line
 * Draws a magenta vertical line
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
  strokeWeight(2);
  
  // Set stroke color magenta
  stroke(255, 0, 255);
  
  // Draw a vertical line from (300, 300) to (300, 50)
  line(300, 300, 300, 50);
}
