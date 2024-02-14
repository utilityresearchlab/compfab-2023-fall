import Turtle.*;

Car myHonda;
Truck myFord;
Turtle t;
int moveDistance = 50;

void setup() {
  size(600, 600);
  t = new Turtle(this);
  myHonda = new Car("Civic", t, moveDistance);
  myFord = new Truck("F150", t, moveDistance);
  frameRate(3);
}


void draw() {
  //println(myHonda, myHonda.name, myHonda.theTurtle, myHonda.moveDistance);
  myHonda.drive();
  println(myHonda.numWheels, myFord.numWheels);
}

class Vehicle {
  String name;
  Turtle theTurtle;
  int moveDistance;
  int numWheels;
  
  public Vehicle(String name, Turtle a, int moveDistance) {
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

class Car extends Vehicle {
    
  public Car(String name, Turtle a, int moveDistance) {
    // Vehicle(...)
    super(name, a, moveDistance);
    this.numWheels = 4;
  }
}

class Truck extends Vehicle {
  
  public Truck(String name, Turtle a, int moveDistance) {
    super(name, a, moveDistance);
    this.numWheels = 16;
  }
 
}
