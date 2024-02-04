// The main processing sketch for running the L1LSystemAssignment code
// Handles incrementing/decrementing the iterations using keyPress events ('m' & 'n')
// Output can be saved by pressing 's'.
// @author: @mriveralee
// Note: This sketch uses the Turtle library which can be downloaded from
// https://github.com/leahbuechley/Turtle
import processing.svg.*;

import Turtle.*;

// How many l-system iterations to do before drawing
// Press 'm' to increase by 1; 'n' to decrease by 1 (min = 0);
int numIterations = 0; 

// Variable to store an L-System (either LSystem or ProbabilisticLSystem)
BaseLSystem lSys;

// The Turtle (do not rename)
Turtle t;

void setup() {
  // set-up drawing
  size(700, 700);
  background(255);
  stroke(0);
  
  // Create the turtle
  t = new Turtle(this);
  
  // Initialize an L-System using 
  // a method in ExampleLSystemDesigns
  lSys = initSquare();
  
  // Don't loop the draw function
  noLoop();
 
  // Print Instructions
  printInstructions();
}

void draw() {
  print("Drawing L-System: ");
  background(255);  
  
  // Reset the turtle position and angle
  resetTurtle();
  
  // Reset the L-System's State
  lSys.reset();
  
  // [TODO]: Iterate (simulate) the LSystem for numIterations 
  // using its iterate() function
  
  // Draw the LSystem using the turtle 
  lSys.drawLSystem(t);
  
  // Print the iteration number
  lSys.printIterationNumber();
  
  // Print the LSystem's State - console gets a bit overwhelmed with iterations >5
  lSys.printState();
}

void keyPressed() {
  switch (key) {
     case 'n':
      // Decrement the numIterations by 1
      numIterations -= 1;
      // Min should be 0.
      numIterations = max(0, numIterations);
      redraw();
      break;
    case 'm':
      // Increment numIterations by 1
      numIterations += 1;
      redraw();
      break;   
    case 's':
      // Export as SVG
      //press the 's' key to save a svg of your drawing
      if (key == 's') {
        // Name of the output file is "lsystem-" with a date string 
        String fileName = "output/lsystem-" + getDateString() + ".svg";
        beginRecord(SVG, fileName);
        draw();
        endRecord();
        println("Saved to file: " + fileName);
      }
   }
 }
 
// Makes a date string (used for filenames)
String getDateString() {
  String time = str(hour()) + "_" + str(minute()) + "_" + str(second());
  String date = str(year()) + "_" + str(month()) + "_" + str(day());
  return date + "-" + time;
}

// Prints some basic instructions for key presses to the console
void printInstructions() {
  println("======== L-System Instructions ========");
  println("Press 'm' to increment the L-system iterations.");
  println("Press 'n' to decrement the L-system iterations.");
  println("Press 's' to save an SVG.");
  println("=======================================");

}

// Resets the position of the turtle
// used each time draw is called 
void resetTurtle() {
  t.penUp();
  t.clearTurtleHistory();
  
  // NOTE: You can change the start position if the image doesn't fit.
  t.goToPoint(width/2, height-20);
  t.setHeading(0);
  t.penDown();
}
