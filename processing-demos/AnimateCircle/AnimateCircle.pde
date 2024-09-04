 int myCounter = 500;

void setup() {
  print("I am setup");
  size(700, 500);
}

void draw() {
  background(200, 100, 100);
  myCounter -= 1;
  println(myCounter);
  circle(100, 100, myCounter);
}
