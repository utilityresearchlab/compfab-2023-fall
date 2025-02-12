import Turtle.*;

Turtle t1;
Car myCar; 
Truck myTruck;

void setup() {
  size(700, 700);
  t1 = new Turtle(this);
  myCar = new Car("Silver", 50, t1);
  myTruck = new Truck("Red", -20, new Turtle(this));
  frameRate(5);
}


void draw() {
  myCar.drive();
  myTruck.drive();
  //println(myCar.clr); 
}

class Vehicle {
  int seats;
  String clr;
  int moveDist;
  Turtle t;
  
  Vehicle(int seats, String clr, int moveDist, Turtle t) {
    this.seats = seats; 
    this.clr = clr;
    this.moveDist = moveDist;
    this.t = t;
  }
  
  void drive() {
    t.forward(moveDist);
    t.drawTurtle();
  }
  
}


class Car extends Vehicle {
 
  Car(String clr, int moveDist, Turtle t) {
    super(4, clr, moveDist, t);
  }
  
}

class Truck extends Vehicle {
  Truck(String clr, int moveDist, Turtle t) {
    super(2, clr, moveDist, t);
  }
  
}
