import processing.pdf.*;
import Turtle.*;
Turtle t; 
String fileName;

void setup() {
  size(800,800);
  background(255);
  stroke(0);
  t = new Turtle(this);
  noLoop();
}

void draw () {
  background(255);
  // draw spiral with 100 iterations
  spiral(100);
  //draw a polygon with 5 sides, each of length 100
  // polygon(100,5);
}

void spiral(int iterations) {
 float fwdDist = 0.25;
 float angleRot = 15.5;
 for (int i = 0; i < iterations; i++) {
   // a = 90, 67.5,  [0.25, 12]
   for (int a = 1; a < angleRot ; a++) {     
      t.forward(fwdDist * i);
      t.left(a);
   }
   //t.right(i);
 }
}

//a polygon drawing procedure
void polygon(float sideLength, int numberOfSides)
{
  for (int i=0;i<numberOfSides;i++)
  {
    t.forward(sideLength);
    t.right(360/numberOfSides);
  }
}

void keyPressed() { 

  //press the 's' key to save a pdf of your drawing
  if (key == 's') {
    //name of file is "turtleDrawing" plus a unique(ish) number
    fileName = "turtleDrawing" + getDateString() + ".pdf";
    beginRecord(PDF, fileName);
    draw();
    endRecord();
    println("Saved to file: " + fileName);

    println();
  }
} 

String getDateString() {
  String time = str(hour()) + "_" + str(minute()) + "_" + str(second());
  String date = str(year()) + "_" + str(month()) + "_" + str(day());
  return date + "-" + time;
}
