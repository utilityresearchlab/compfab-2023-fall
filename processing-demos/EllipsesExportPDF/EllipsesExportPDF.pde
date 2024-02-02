// Create some ellipses
// Pressing 's' saves the drawing as
// an SVG file in the "output" directory
// of the sketch folder
import processing.pdf.*;

void setup() {
  size(800, 800);
  // No Looping on draw so we can export easily
  noLoop();
}

void draw() {
  // Set up colors
  background(255);
  stroke(2);
  noFill();
  
  // the three ellipses
  ellipse(width/2, height/3, 220, 35);
  ellipse(width/2, height/3, 60, 400);
  ellipse(width/2, height/3, 100, 240);
}

// Handles key press events
void keyPressed() { 
  // press 's' to save a svg of your drawing
  if (key == 's') {
    // Make file name with the currrent date/time
    String folder = "output";
    String fileName = "drawing-" + getDateString() + ".pdf";
    beginRecord(PDF, folder + "/" + fileName);
    draw();
    endRecord();
    println("Saved to file: " + fileName);
  }
} 

// Generates a date string of the format year_month_day-hour_min_second
String getDateString() {
  String time = str(hour()) + "_" + str(minute()) + "_" + str(second());
  String date = str(year()) + "_" + str(month()) + "_" + str(day());
  return date + "-" + time;
}
