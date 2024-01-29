int radius = 30;
int maxRadius = 200;

void setup() {
  size(500, 500);
  frameRate(120);
}


void draw() {
 
  for(int i = 0; i < width; i += 20) {
     for(int j = 0; j < height; j += 20) {
        float randDimX = random(50, 150); 
        float randDimY = random(50, 150); 
        noFill();
        rect(i, j, randDimX, randDimY);
     }
  }
  noLoop();
}
