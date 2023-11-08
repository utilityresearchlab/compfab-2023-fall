public class Ball {
  public float diameter;
  public float mass;
  public float posX;
  public float posY;
  public float velX;
  public float velY;
  
  public Ball() {
    this(1.0, 10, width/2, height/2);
  }
  
  public Ball(float mass, 
    float diameter, 
    float startX, 
    float startY) {
    this.mass = mass;
    this.diameter = diameter;
    this.posX = startX;
    this.posY = startY;
    this.velX = 0; // no initial velocity
    this.velY = 0; // no initial velocity
  }
  
  public void draw() {
    color(255, 255, 0);
    fill(255, 255, 0);
    ellipse(posX, posY, diameter, diameter);
  }
  
}
