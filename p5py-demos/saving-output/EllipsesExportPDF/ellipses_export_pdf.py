# Create some ellipses
# Pressing 's' saves the drawing as
# an SVG file in the "output" directory
# of the sketch folder

from p5 import *
from datetime import datetime

OUTPUT_FOLDER = './output/'


def setup():
    size(800, 800)
    no_loop() # No Looping on draw so we can export easily


def draw():
    background(255)
    stroke(2)
    no_fill()

    # The three ellipses
    ellipse(width / 2, height / 3, 220, 35)
    ellipse(width / 2, height / 3, 60, 400)
    ellipse(width / 2, height / 3, 100, 240)


def key_pressed(event):
    # Press 's' to save
    if event.key == 's':
        # Create a date/time string
        now = datetime.now()
        
        # Generates a date string of the format year_month_day-hour_min_second
        date_string = now.strftime("%Y_%m_%d-%H_%M_%S")
        
        # Make file name with the currrent date/time
        file_name = f"drawing-{date_string}.pdf"
        
        # Save the canvas
        save_frame(OUTPUT_FOLDER + file_name)

        print(f"Saved to file: {file_name}")


# Run the P5 Application
if __name__ == '__main__':
    # p5 supports different backends to render sketches,
    # "vispy" for both 2D and 3D sketches & "skia" for 2D sketches
    # use "skia" for better 2D experience
    # Default renderer is set to "vispy"
    print("Starting application...")
    run(renderer="vispy") # vispy crashes for text size changes
    #run(renderer="skia") # "skia" is still in beta, skia works with text_size

