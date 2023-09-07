/* MousePressDrawPoint
 * Draws a red point at the center of the screen and
 * When the mouse is pressed, draws a black point that 
 * follows the mouse location
 */
void setup() {
  // Setup code - gets called once at 
  size(600, 600);
}

void draw() {
  // Clear background with white
    background(230, 230, 230);
    
    // Draw black point at mouse location, when 
    // the mouse is pressed
    stroke(0, 0, 0);
    strokeWeight(20);
    if (mousePressed) {
      point(mouseX, mouseY);
    }
    
    point(mouseX, mouseY);

    // Draw red point at center
    stroke(255, 0, 0);
    point(width/2, height/2);
}
