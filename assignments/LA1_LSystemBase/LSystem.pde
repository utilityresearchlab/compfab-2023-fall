// This is an implementation of an L-System
// Assumes all input vocabulary not given a rule are constants. 
// Though you could give an explicit rule for a constant using "F" --> "F"
// It uses StringBuffer to handle replacing characters in production rules
// in order to avoid wasteful creation of strings and memory problems
// @author: @mriveralee
import java.util.HashMap;

public class LSystem {
  
  // Member Variables for an Instance of this object 
  private String axiom;
  private HashMap<Character, String> rules;
  
  private int iterationNum = 0;
  
  // A temporary buffer for creating a new string
  private StringBuffer currentIterationBuffer = new StringBuffer();

  // The general distance to move
  private float moveDistance = 10;
  
  // The general angle to rotate
  private float rotateAngle = 90;
  
  // How much to scale the drawing of the l-system on each iteration
  private float scaleFactor = 1.0;

  // Constructor for making an Lsystem object with input parameters 
  public LSystem(String axiom, 
                 HashMap<Character, String> rules, 
                 float moveDistance,
                 float rotateAngle,
                 float scaleFactor){
    // Initialize variables for Lsystem
    this.axiom = axiom;
    this.rules = rules;
    this.moveDistance = moveDistance;
    this.rotateAngle = rotateAngle;
    this.scaleFactor = scaleFactor;
    
    // Initialize current iteration (n = 0) to be the axiom
    reset();
  }
  
  // clears the current iteration string
  // to be used only within this class
  private void clearCurrentStringBuffer() {
    // Erases the string buffer holding the current iteration
    if (currentIterationBuffer.length() > 0) {
      currentIterationBuffer.delete(0, currentIterationBuffer.length());
    }
  };
     
  public void reset() {
   iterationNum = 0;
   this.clearCurrentStringBuffer();
   currentIterationBuffer.append(axiom); 
  }
  
  // Returns the current iteration string
  public String getIterationString() {
    return currentIterationBuffer.toString();
  }
  
  public int getIterationNum() {
     return iterationNum; 
  }
  
  public void printState() {
    println("n = ", iterationNum, " : ", currentIterationBuffer);
  }
  
  public void printIterationNumber() {
    println("n = ", iterationNum);
  }
  
  
  // runs 1 iteration, performing the rules for each character
  // on the current string. The result of the replacement is added to the 
  public void iterate() {
    // get a copy of the current iteration string
    String current = this.getIterationString();
    
    // Now clear the current iteration string: currentIterationBuffer
    this.clearCurrentStringBuffer();
    
    // TODO: Implement the procedure for using the rules to replace characters in the current string, 
    // and append them them to the currentIterationBuffer
 
 
 
 
     // Increment our iteration after we are done
     iterationNum += 1;
  }
  
  // This function uses the turtle to draw based on each character in the LSystem's 
  // iteration string. It also handles scaling the moveDistance (to keep the image in frame), if desired
  public void drawLSystem(Turtle t) {
    // Get the current iteration numbers
    int iterationNum = this.getIterationNum();
    
    // Scale the move distance (if needed)
    float dist = this.moveDistance;
    
    // Helps keep the image in frame when it gets too big
    if (scaleFactor != 1) {
      dist = dist / (scaleFactor * (iterationNum + 1));
    }

    // Get the current iteration string
    String currentIteration = this.getIterationString(); 
    
    // TODO: Loop through each character in the iteration string,
    // and do turtle operations

    for (int i = 0; i < currentIteration.length(); i++) {
      Character c = currentIteration.charAt(i); 
      // TODO: Imoplement turtle operations for different commands
      switch (c) {
        case 'F':
          t.forward(dist);
          break; // The "break" breaks out of the switch statement and prevents the next cases from running
         case '+':
           // TODO
           break;
         default:
           // Throw an error if we don't have a draw operation implemented 
           throw new IllegalArgumentException("Missing a drawing operation case for character: " + c.toString());  
       }
    }
  }
}
