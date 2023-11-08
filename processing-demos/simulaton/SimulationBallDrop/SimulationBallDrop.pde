
float TIME_STEP = 0.1;           // in seconds
float gravityAcceleration = 9.8; // in m/seconds^2

Ball OUR_BALL;
  
void setup() {
  size(800, 800);
  //frameRate(30); 
  background(255);
  
  float mass = 1.0;     // kg
  float diameter = 20.0; 
  float startX = width / 2;
  float startY = height / 2;
  OUR_BALL = new Ball(mass, diameter, startX, startY);
  
  // Play with initial velocities
  //OUR_BALL.velY = -30;
  OUR_BALL.velX = -10;
}

void draw() {
  background(255);
  simulate(TIME_STEP);
  // Now draw the updated ball 
  OUR_BALL.draw();
}

void simulate(float timeStep) {
  // Solve Netwon's equations
  // Compute force --> update velocities --> update position
  // --------------
  // First: compute force
  // Only force we have is weight from gravity in the Y direction
  // Sum of F = ma, our only force is in the Y-direction for gravity on the ball
  // No force in the X direction;
  float FTotalX = 0;
  float FTotalY = 0;
  float FgY = OUR_BALL.mass * gravityAcceleration;
  FTotalY = FgY;
  FTotalX = 0;
  
  // ---------------
  // Second: Update velocities
  // v_new = v_old + (0.5 * a * t)
  // F = ma
  // a = F/m
  // Therefore, we have
  // v_new = v_old + (0.5 * F/m * t)
  float vOldY = OUR_BALL.velY;
  float vOldX = OUR_BALL.velX;
  float aX = FTotalX / OUR_BALL.mass;
  float aY = FTotalY / OUR_BALL.mass;
  OUR_BALL.velX = vOldX + (0.5 * aX * timeStep);
  OUR_BALL.velY = vOldY + (0.5 * aY * timeStep);

  // ---------------
  // Third: Update Position\
  // pos_new = pos_old + (v_new * timeStep) 
  float posOldX = OUR_BALL.posX;
  float posOldY = OUR_BALL.posY;
  OUR_BALL.posX = posOldX + OUR_BALL.velX * timeStep;
  OUR_BALL.posY = posOldY + OUR_BALL.velY * timeStep;
}
 
