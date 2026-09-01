# P5 Python Setup

## Setup the Virtual Env
1. From the directory of this folder, create a virtual env using: `python3 -m venv env`
2. Activate the virtual environment: `source env/bin/activate`
3. Install the required packages using: `pip install -r requirements.txt`
4. When adding new packages, be sure to update the requirements.txt using: `pip freeze > requirements.txt`

## Running the script 
1. Activate the virtual environment:  
 - On Mac: `source env/bin/activate`
2. Run the script:
        `python example.py `
        
## Troubleshooting:
- On Mac:
    - If the installation of P5 fails because of an `ERROR: Failed building wheel for vispy`:
        - Try accepting the Xcode License Agreement. In a new terminal window run: `sudo xcodebuild -license` and agree to the terms.
        