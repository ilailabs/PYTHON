"""
exports the dump data for particular frames using ovito python
"""

## writing lmp file using ovitos
from ovito.io import *
for n in range(27,28):
	fname='dump.'+str(n)+'.lmp'
	node=import_file(fname,multiple_frames = True)
	nFrames=node.source.num_frames

	i=nFrames-1
	lmpfname='datafile'+str(n)+'.lmp'
	export_file(node, lmpfname, "lammps_data", frame=i)


