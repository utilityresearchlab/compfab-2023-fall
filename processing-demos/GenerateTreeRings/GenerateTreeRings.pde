int radius = 30;
int maxRadius = 200;

void setup() {
  size(500, 500);
  frameRate(120);
}


void draw() {
  int a = 9;
  for (int i = maxRadius; i >= radius; i -= a) {
    float r = random(100, 200);
    if (i % 2 == 0) {
      fill(255, 200, 170);
    } else {
      fill(200, r, r);
    }
    circle(width / 2, height /2, i);
  }
  noLoop();
}
