import processing.pdf.*;
import processing.svg.*;
import Turtle.*;

Turtle t; 

void setup() {
  size(800, 800);
  background(0);
  stroke(255);
  t = new Turtle(this);
  noLoop();
}

void draw () {
  // draw spiral with 100 iterations
  spiral(100);
}

void spiral(int iterations) {
 float forwardDist = 0.25;
 float angle = 67.5;
 for (int i = 0; i < iterations; i++) {
   // a = 90, 67.5,  [0.25, 12]
   for (int a = 1; a < angle ; a++) {     
      t.forward(forwardDist * i);
      t.left(a);
   }
 }
}

void keyPressed() { 
  // press 's' to save a pdf of your drawing
  if (key == 's') {
    String fileName = "drawing" + getDateString() + ".svg";
    beginRecord(SVG, fileName);
    draw();
    endRecord();
    println("Saved to file: " + fileName);
  }
} 

String getDateString() {
  String time = str(hour()) + "_" + str(minute()) + "_" + str(second());
  String date = str(year()) + "_" + str(month()) + "_" + str(day());
  return date + "-" + time;
}
