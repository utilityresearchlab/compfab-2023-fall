# A simple p5py processing sketch
# @author: mriveralee / UtilityResearchLab.org

from p5 import *

# Params
y = 0


# The statement in setup() function
# execute once when the program begins
def setup():
    # use global to access global primitives
    # note this is not the best practice
    global y 
    size(640, 360) # size must be the first statement
    stroke(255) # Set line drawing color to white
    y = 0
    print("Finished the setup.")

    
# The statements in draw() are executed until the
# program is stopped. Each statement is executed in
# sequence and after the last line is read, the first
# line is executed again.
def draw():
    global y
    background(255, 100, 100) # Clear the screen with a black background

    # Draw sensor value as text at (X, Y) position
    fill(255)

    # Draw line across screen
    y = y - 1
    if y < 0:
        y = height
    line((0, y), (width, y))
    
# Run the P5 Application
if __name__ == '__main__':
    # p5 supports different backends to render sketches,
    # "vispy" for both 2D and 3D sketches & "skia" for 2D sketches
    # use "skia" for better 2D experience
    # Default renderer is set to "vispy"
    print("Starting application...")
    run(renderer="vispy") # vispy crashes for text size changes
    #run(renderer="skia") # "skia" is still in beta, skia works with text_size


