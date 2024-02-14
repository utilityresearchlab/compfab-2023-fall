import Turtle.*;

Turtle t;

float foodX;
float foodY;
float foodSize;// = 20;

void setup() {
  size(900, 900);
  background(0);
  
  t = new Turtle(this); 
  
  // Create food
  generateFood();
  
  // Put turtle at random position
  t.setX(random(width));
  t.setY(random(height));
}

void generateFood() {
  foodX = random(20, width - 20);
  foodY = random(20, height - 20);
  foodSize = random(5, 20);
}

void draw() {
  // Draw Food as a red circle
  noStroke();
  fill(255, 0, 0);
  circle(foodX, foodY, foodSize);
  
  // Set up Turtle Drawing
  strokeWeight(3);
  stroke(255);
  fill(255);
  
  // Get current turtle position
  float tX = t.getX();
  float tY = t.getY();
  float tH = t.getHeading();
  
  // Check how far we are from the food
  float distToFood = dist(tX, tY, foodX, foodY);
  if (distToFood <= foodSize) {
    // We've reached the food
    println("Food reached -- yum!");
    
    // Create some more food and then  draw the turtle to 
    // mark the food as eaten
    println("Creating more food...");
    generateFood();
    t.drawTurtle();
    return;
  }
  
  // Get angle between two points
  float angle = degrees(atan2(foodY - tY, foodX - tX)) ;

  // Turtle points up by default so add 90 to offset from 0
  angle += 90;
  
  // Keep angle within 360
  angle %= 360;
  
  // Take small random approximate angles towards food
  t.setHeading(random(0.2, 1.1) * angle);

  // Take small random steps towards food
  t.forward(random(5, 20));
}
