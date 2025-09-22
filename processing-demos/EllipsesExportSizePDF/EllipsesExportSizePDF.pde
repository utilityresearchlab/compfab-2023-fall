// Create some ellipses
// Use the size function to export a PDF directly
// NO Drawing window will open -- check the console output.

import processing.pdf.*;

// Make file name with the currrent date/time
String folder = "output";
String fileName = folder + "/" + "drawing-" + getDateString() + ".pdf";

void setup() {
  // Call size function with window size + PDF + filename for output
  size(800, 800, PDF, fileName);
  // No Looping on draw so we can export easily
  noLoop();
  // Set density so image isn't cut off
  pixelDensity(1);
}

void draw() {
  // Set up colors
  translate(-width/4,0);
  background(255);
  stroke(2);
  noFill();
  
  // the three ellipses
  ellipse(width/2, height/3, 220, 35);
  ellipse(width/2, height/3, 60, 400);
  ellipse(width/2, height/3, 100, 240);
  
  // Exit the window
  println("Saved to file: " + fileName);
  println("Finished saving.");
  exit();
}

// Generates a date string of the format year_month_day-hour_min_second
String getDateString() {
  String time = str(hour()) + "_" + str(minute()) + "_" + str(second());
  String date = str(year()) + "_" + str(month()) + "_" + str(day());
  return date + "-" + time;
}
