/* LineWithPoints
 * Draws a line with two points
 * The points are large and red
 * The line is thin and blue.
 */
void setup() {
  // Sets size of the window
  size(600, 600);
  
  // Sets background as gray
  background(225, 225, 225);
}

void draw() {
    // Clear the background with gray
    background(225, 225, 225);
   
    // Set large stroke size
    strokeWeight(20);
    // Set stroke color to red
    stroke(255, 0, 0);
    
    // Draw 2 points
    point(width/4, height/4);
    point(width/2, height/2);
    
    // Set thin stroke size
    strokeWeight(1);
    // Set color to blue
    stroke(0, 0, 255);
    // Draw the line
    line(width/4, height/4, width/2, height/2);
}
