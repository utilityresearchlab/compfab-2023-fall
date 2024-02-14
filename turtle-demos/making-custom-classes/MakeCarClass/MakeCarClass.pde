import Turtle.*;

Car myHonda;
Turtle t;
int moveDistance = 50;

void setup() {
  size(600, 600);
  t = new Turtle(this);
  myHonda = new Car("Civic", t, moveDistance);
  frameRate(3);
}


void draw() {
  //println(myHonda, myHonda.name, myHonda.theTurtle, myHonda.moveDistance);
  myHonda.drive();
}

class Car {
  
  String name;
  Turtle theTurtle;
  int moveDistance;
  
  public Car(String name, Turtle a, int moveDistance) {
    this.name = name;
    this.theTurtle = a;
    this.moveDistance = moveDistance; 
  }
  
  int drive() {
    theTurtle.forward(moveDistance);
    theTurtle.drawTurtle();
    return moveDistance; 
  }
  
}
