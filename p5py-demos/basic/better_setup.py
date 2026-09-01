# A simple p5py processing sketch that uses an AppState to hold global vars
# This makes it easier to modify parameters without using "global" calls
# @author: mriveralee / UtilityResearchLab.org

from p5 import *

# Use app state for parameters
class AppState:
    y = 0

# Declare  AppState Object globally
APP_STATE = AppState()


# The statement in setup() function
# execute once when the program begins
def setup():
    # use global to access global primitives
    # note this is not the best practice

    size(640, 360) # size must be the first statement
    stroke(255) # Set line drawing color to white
    APP_STATE.y = 0

    print("Finished the setup.")
    

# The statements in draw() are executed until the
# program is stopped. Each statement is executed in
# sequence and after the last line is read, the first
# line is executed again.
def draw():
    background(255, 100, 100) # Clear the screen with a black background

    # Draw sensor value as text at (X, Y) position
    fill(255)

    # Draw line across screen
    APP_STATE.y = APP_STATE.y - 1
    if APP_STATE.y < 0:
        APP_STATE.y = height
    line((0, APP_STATE.y), (width, APP_STATE.y))
    
# Run the P5 Application
if __name__ == '__main__':
    # p5 supports different backends to render sketches,
    # "vispy" for both 2D and 3D sketches & "skia" for 2D sketches
    # use "skia" for better 2D experience
    # Default renderer is set to "vispy"
    print("Starting application...")
    run(renderer="vispy") # vispy crashes for text size changes
    #run(renderer="skia") # "skia" is still in beta, skia works with text_size


