// A rule-based diffusion example

// The current state for drawing
int[][] currentPixelGrid;

// The previous state before updating to draw
int[][] lastPixelGrid;

// The number of random growth starters
int randStarters = int(random(2, 20));

// Circle Grid region
int drawCircleRegion = 10;

int NUM_RUN_ITERATIONS = 70;

void setup() {
  size(600, 400);
  background(255);
  stroke(0);
  //noFill();

  // Create the gird
  currentPixelGrid = new int[width][height];
  lastPixelGrid = new int[width][height];
  initGrowthPixels();

}

// Creates a bunch of pixels for growing
void initGrowthPixels() {
  for (int i = 0; i < randStarters; i += 1) {
    int x = int(random(0, width));
    int y = int(random(0, height));
    currentPixelGrid[x][y] = int(random(2, 200));
  }
}

// Clears the grid
void clearGridState() {
  for (int x = 0; x < width; x += 1) {
    for (int y = 0; y < height; y += 1) {
      currentPixelGrid[x][y] = 0;
    }
  }
}

int iterationCount = 0;
void draw() {
  // stop if we reach iteration count
  if (iterationCount == NUM_RUN_ITERATIONS) {
    return;
  }
  iterationCount += 1;
  
  
  // Clear drawing
  background(255);
  updateLastGridState();
  grow();
  //drawGridPoints();
  drawGridShapes();

}


// Copies the current values of the grid to the last grid state
void updateLastGridState() {
  for (int x = 0; x < width; x += 1) {
    for (int y = 0; y < height; y += 1) {
      lastPixelGrid[x][y] = currentPixelGrid[x][y];
    }
  }
}

//
void grow() {
  for (int x = 0; x < width; x += 1) {
    for (int y = 0; y < height; y += 1) {
      int val = lastPixelGrid[x][y];
      if (val == 0) {
        // do nothing
        continue; 
      }

      // update values of neighbors
      for (int i = x - 1; i <= x + 1; i += 1) {
        for (int j = y - 1; j <= y + 1; j += 1) {
          if (i < 0 || i >= width || j < 0 || j >= height) {
            // out of bounds so do nothing
            continue;
          }
          if (i == x && j == y) {
             // Same pixel, do nothing
             continue;
          }
          // Randomize what the pixel should do
          int randomAction = int(random(0, 100));
          if (randomAction < 80) {
            // When action is even skip
            continue;
          }
          // Action is odd, use rules with neighbor
          int neighborValue = lastPixelGrid[i][j];
          if (neighborValue == 0) {
            // Take over the value  
            currentPixelGrid[i][j] = (round(random(0, 5)) * val) % 255;
          } else {
            currentPixelGrid[i][j] = int((val + neighborValue) / 2);
          }
        }
      }
    }
  }
}

void drawGridPoints() {
  // Draw grid
  for (int x = 0; x < width; x += 1) {
    for (int y = 0; y < height; y += 1) {
      int currentVal = currentPixelGrid[x][y];
      //stroke(0);
      //println(currentVal);
      if (currentVal > 0) {
        if (currentVal < 75) {
          stroke(currentVal, 0, 0);
        } else if (currentVal >= 75 && currentVal < 180) {
          stroke(0, currentVal, 0);
        } else {
          stroke(0, 0, currentVal);
        }
        point(x,y);
        //circle(x, y, 1 + currentVal/255);
        stroke(0);
      }
    }
  }
}

void drawGridShapes() {
  // Draw grid
  for (int x = 0; x < width; x += drawCircleRegion) {
    for (int y = 0; y < height; y += drawCircleRegion) {
            // update values of neighbors
      int count = 0;
      int sum = 0;
      for (int i = x - drawCircleRegion; i <= x + drawCircleRegion; i += 1) {
        for (int j = y - drawCircleRegion; j <= y + drawCircleRegion; j += 1) {
          if (i < 0 || i >= width || j < 0 || j >= height) {
            // out of bounds so do nothing
            continue;
          }
          count += 1;
          sum += currentPixelGrid[i][j];
        }
      }
      int r = sum / count; 
      //circle(x, y, r / random(4, 4.1));
      square(x, y, r);
    }
  }
}

void keyPressed() {
  if (key == 'r') {
    background(255);
    iterationCount = 0;
    clearGridState();
    initGrowthPixels();
    redraw();
  }
}
