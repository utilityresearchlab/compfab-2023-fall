int a = 10;


void setup() {
  size(600, 600);
  println("Setup");
  println(a);
}


void draw() {
  noFill();
  circle(width/2, height/2, a);
  a += 4;
}
