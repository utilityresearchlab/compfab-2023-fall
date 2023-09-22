import processing.svg.*;

import Turtle.*;

Turtle t;

void setup() {
  size(800,800);
  background(0);
  stroke(255);
  // Make turtle 
  t = new Turtle(this);
  noLoop();
}

void draw() {
  // Increment distance in the loop
  for (int d = 0; d < 20; d += 2){
    // Do multiple circle iterations
    for (int i = 0; i < 30; i++) {
      drawCircle(10 + d, 15);
      t.right(45);
    }
  }
}

void drawCircle(int dist, int rotAngle) {
  t.forward(dist);
  t.left(rotAngle);
  int newAngle = rotAngle;
  do {
     t.forward(dist);
     t.left(rotAngle);
     newAngle += rotAngle;
  } while (newAngle % 360 != 0);
  println("Done circle loop");
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
