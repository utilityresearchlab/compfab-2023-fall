// SimulateBallDrop
// This sketch simulates a ball dropping due to the force 
// of gravity then hitting a floor and bouncing back up.
// The velocity of the ball dampens with each additional
// bounce until it comes to a rest.
// The purpose is to show basic time integration using
// Euler's Method
// @author: @mriveralee

// Constants for Simulation
float FLOOR_Y = 600;             // Location of Floor
float DAMPING_FACTOR = 0.88;     // Applied on floor collision
float TIME_STEP = 0.1;           // in seconds
float GRAVITY_ACCELERATION = 9.8; // in m/seconds^2

// The Ball
Ball OUR_BALL;
  
void setup() {
  size(800, 800);
  frameRate(100); 
  background(255);
  
  // Set-up the ball
  float mass = 10.0;  // kg
  float diameter = 20.0; 
  float startX = width / 2;
  float startY = height / 2;
  OUR_BALL = new Ball(mass, diameter, startX, startY);
  
  // Play with initial velocities
  OUR_BALL.velY = -60;  // Throw straight up
  OUR_BALL.velX = 0;
}

void draw() {
  background(255);
  
  // Step through time
  simulate(TIME_STEP);
  
  // Now draw the updated ball 
  OUR_BALL.draw();
}

// This function first applies any constraints to the system
// such as a floor constraint. Then it computes the forces
// acting on our ball, then performs time integration with
// Euler's method to update the state of the ball.
void simulate(float timeStep) {
  // Apply constraints
  applyConstraints();
  
  // Perform Time Integration w/ Euler's Method
  // Compute force --> update velocities --> update position
  // --------------
  // First: compute force
  // Only force we have is weight from gravity in the Y direction
  // Sum of F = ma, our only force is in the Y-direction for gravity on the ball
  // No force in the X direction;
  float FTotalX = 0;
  float FTotalY = 0;
  float FgY = OUR_BALL.mass * GRAVITY_ACCELERATION;
  FTotalY = FgY;
  FTotalX = 0;
  
  // ---------------
  // Second: Update velocities
  // v_new = v_old + (a * t)
  // F = ma
  // a = F/m
  // Therefore, we have
  // v_new = v_old + (F/m * t)
  float vOldY = OUR_BALL.velY;
  float vOldX = OUR_BALL.velX;
  float aX = FTotalX / OUR_BALL.mass;
  float aY = FTotalY / OUR_BALL.mass;
  OUR_BALL.velX = vOldX + aX * timeStep;
  OUR_BALL.velY = vOldY + aY * timeStep;

  // ---------------
  // Third: Update Position
  // pos_new = pos_old + (v_new * timeStep) 
  float posOldX = OUR_BALL.posX;
  float posOldY = OUR_BALL.posY;
  OUR_BALL.posX = posOldX + OUR_BALL.velX * timeStep;
  OUR_BALL.posY = posOldY + OUR_BALL.velY * timeStep;
}

// This function applies any constraints to our system
// Basically it ensures out ball doesn't fall below the floor.
// This is done by applying and impulse to force the position
// of the ball above the floor and reversing the velocities of
// ball
void applyConstraints() {
  // Floor constraint
  float floorYLessRadius = (FLOOR_Y - OUR_BALL.diameter / 2);
  if (OUR_BALL.posY >= floorYLessRadius) {
    // Force the ball up above the floor
    OUR_BALL.posY = floorYLessRadius;
    // Reverse the direction of it's velocity
    // and apply a damping factor to slow it down
    float dampingFactor = 0.9;
    OUR_BALL.velY = -1 * DAMPING_FACTOR * OUR_BALL.velY;
    //OUR_BALL.velX = 0.9 * OUR_BALL.velX;
  }
}
 
