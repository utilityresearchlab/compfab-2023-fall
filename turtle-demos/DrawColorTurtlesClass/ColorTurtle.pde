class ColorTurtle {
  Turtle theTurtle;
  color theColor;
  int theSize;
  
  ColorTurtle(Turtle t, color c, int size) {
    theTurtle = t;
    theColor = c;
    theSize = size; 
  }
  
  void draw() {
    strokeWeight(theSize);
    stroke(theColor);
    theTurtle.left(random(1, 360));
    theTurtle.forward(random(1, 20));
  }
}
