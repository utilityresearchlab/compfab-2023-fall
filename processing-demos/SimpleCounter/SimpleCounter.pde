// Global Variables
int counter = 0;

// Setup code - gets called once at 
// the start of the app
void setup() {
 println("Set-up!");
 println("Counter: ", counter);
}

// Called repeatedly (a loop)
// Handles all your apps logic
void draw() {
  println("Counter: ", counter);
  counter += 1;
}
