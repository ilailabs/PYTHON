"""
This script calculates distance bw partices of given position; importing global attributes into a text file;
"""

## dist bw position 0 and position 2
## [ref](http://forum.ovito.org/index.php?topic=360.0)

from ovito.data import *
import numpy as np
def modify(frame, input, output):
    distance = np.linalg.norm( input.particles["Position"][0]-input.particles["Position"][2] )
    print (distance)
    output.attributes["Distance"] = distance		#this saves as global attributes.

# NOTE: don't do this mistake of sub partice ids `distance = np.linalg.norm( input.particles["Particle Identifier"][655] - input.particles["Particle Identifier"][679] )`






