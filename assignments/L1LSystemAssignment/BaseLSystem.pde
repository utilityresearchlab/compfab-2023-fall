// This is an abstract class (cannot be instantiated directly)
// DO NOT EDIT THIS CLASS
// It is used to share methods/variables between the various
// types of L-Systems you can have (regular, probablistic, etc).
// It contains a StringBuffer (currentIterationBuffer) that should be used
// to handle production rules when computing the currentIteration string as part of iterate
// in order avoid wasteful creation of strings and memory problems.
// Note that the iterate and drawLSystem must be implemented as part of any subclass.
public abstract class BaseLSystem {
  
  //-------------------------------------------
  // ----------- Member Variables ------------- 
  // These are accessible and specific to an instance of an object
  // below are "default" values that are changed using the constructor
  // of the LSystem
  
  // The axiom
  protected String axiom;

  // The general distance to move
  protected float moveDistance = 10;
  
  // The general angle to rotate
  protected float rotateAngle = 90;
  
  // How much to scale the drawing of the l-system on each iteration
  protected float scaleFactor = 1.0;
  
  // The Current Iteration number
  protected int iterationNum = 0;
  
  // A temporary buffer for creating a new string
  protected StringBuffer currentIterationBuffer = new StringBuffer();
  
  //---------- End of member variables ------------
  //-----------------------------------------------

  //------------------------------------------------
  //-----------  Shared L-System Methods ----------- 
  //------------------------------------------------
  // Constructor to initialize l-system variables;
  // Called using "super" in classes that extend the BaseLSystem
  public BaseLSystem(String axiom, 
                 float moveDistance,
                 float rotateAngle,
                 float scaleFactor){
    this.axiom = axiom;
    this.moveDistance = moveDistance;
    this.rotateAngle = rotateAngle;
    this.scaleFactor = scaleFactor;
                
    // Initialize current iteration (n = 0) to be the axiom
    reset();
  }
  
  // Iterates on the L-system
  public abstract void iterate();
  
  // Draws the L-System using the turtle
  public abstract void drawLSystem(Turtle t);
  
  // clears the current iteration string
  // to be used only within this class
  protected void clearCurrentStringBuffer() {
    // Erases the string buffer holding the current iteration
    if (currentIterationBuffer.length() > 0) {
      currentIterationBuffer.delete(0, currentIterationBuffer.length());
    } 
  };
  
  // Resets the L-System state and iteration number
  public void reset() {
   iterationNum = 0;
   this.clearCurrentStringBuffer();
   currentIterationBuffer.append(axiom); 
  }
  
  // Returns the current iteration string
  public String getIterationString() {
    return currentIterationBuffer.toString();
  }
  
  // Returns the iteration number of the LSystem
  // (note this is internal to the LSystem and
  // not necessarily the same as numIterations in L1LSystemAssignment 
  public int getIterationNum() {
     return iterationNum; 
  }
  
  // Prints the LSystem's state but limits the string length to 1000
  public void printState() {
    println("n = ", iterationNum, " : ", currentIterationBuffer);
  }
  
  public void printIterationNumber() {
    println("n = ", iterationNum);
  }

}
