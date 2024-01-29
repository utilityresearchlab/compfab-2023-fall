int radius = 30;
int maxRadius = 400;

void setup() {
  size(500, 500);
  frameRate(120);
}


void draw() {
  int a = 9;
  for (int i = maxRadius; i >= radius; i -= (a + random(1, 30))) {
    float r = random(120, 180);
    if (i % 2 == 0) {
      fill(255, 200, 170);
    } else {
      fill(240, 200, r);
    }
    circle(width / 2, height /2, i);
  }
  noLoop();
}
