 int myCounter = 500;

void setup() {
  size(700, 500);
  noLoop();
  background(255);
  randomSeed(10);
}

void draw() {
  noFill();
  //randomSeed(10);
  
  if (mousePressed) {
    float baseRadius = 10;
    int numCircles = round(random(5, 40));
    drawTreeCircles(mouseX, mouseY, baseRadius, numCircles); 
  }
}

void drawTreeCircles(float pX, float pY, float baseRadius, int numCircles) {
  float radius = 1;
  for (int i = 0; i < numCircles; i += 1) {
    circle(pX, pY, radius);
    //radius += baseRadius * noise(i);//random(10, 50);
    radius += random(baseRadius);
  }
}

void keyPressed() {
  if (key == 'd') {
     println("d pressed");
     background(255);
//     redraw();
  }
}

void mousePressed() {
  print("My mouse is pressed: ");
  print(mouseX);
  print(",");
  println(mouseY);
  redraw();
}
