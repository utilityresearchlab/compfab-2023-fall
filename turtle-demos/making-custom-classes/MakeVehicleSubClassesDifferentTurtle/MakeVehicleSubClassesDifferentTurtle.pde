import Turtle.*;

Car myHonda;
Turtle carTurtle;


Truck myFord;
Turtle truckTurtle;

int moveDistance = 50;

void setup() {
  size(600, 600);
  carTurtle = new Turtle(this);
  truckTurtle = new Turtle(this);

  myHonda = new Car("Civic", carTurtle, moveDistance);
  myFord = new Truck("F150", truckTurtle, moveDistance);
  frameRate(3);
}


void draw() {
  //println(myHonda, myHonda.name, myHonda.theTurtle, myHonda.moveDistance);
  myHonda.drive();
  myFord.drive();
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
    this.theTurtle.right(30);
  }
 
}
