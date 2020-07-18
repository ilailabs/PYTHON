"""
Using *slice* modifer of ovito using ovtio-python-interepreter
"""

filename = "BiCrystal.lmp"
efilename = "hexPlane.lmp"
from ovito.io import *
from ovito.modifiers import SliceModifier

node = import_file(filename)

print("exporting...")
SliceModifier
node.modifiers.append( SliceModifier ( normal = (0, 0, 1), distance = 3.0))
export_file(node,efilename,"lammps_data")
