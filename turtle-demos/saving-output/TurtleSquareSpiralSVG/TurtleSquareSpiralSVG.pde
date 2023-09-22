import Turtle.*;
import processing.svg.*;

int size = 0;
int maxSize = 500;

Turtle t;

void setup() {
  size(900,900);
  background(0);
  stroke(255);
  strokeWeight(1);
  frameRate(30); 
  
  t = new Turtle(this); 
  noLoop();
}

void draw() {
  for (int i = 0; i < maxSize; i++){
  if (size == maxSize) {
    // Stop drawing at max size
    return;
  }
   t.forward(size);
   t.right(91);
   size += 1;
  }
  size = 0;
}


void keyPressed() {
  switch (key) {
    case 's':
      // Export as SVG
      //press the 's' key to save a svg of your drawing
      if (key == 's') {
        // Name of the output file is "lsystem-" with a date string 
        String fileName = "output/drawing-" + getDateString() + ".svg";
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
