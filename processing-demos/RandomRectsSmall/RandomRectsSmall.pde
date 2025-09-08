void setup() {
  background(255);
  size(600, 600);
  noLoop();
}


void draw() {
  int baseSize = 40;
  for (int x = 0; x < width; x += round(random(20))) {
    for (int y = 0; y < height; y += round(random(20))) {
      rect(x, y, random(5 * baseSize), random(3 * baseSize)); 
    }
  }
  
}
