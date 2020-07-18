"""
converts dump files into lmp files using ovitos; can convert all dump frames or particular choosen frames; oct-19;
"""

from ovito.io import *
fname='dump.1lammpstrj'
node=import_file(fname,multiple_frames = True)
nFrames=node.source.num_frames

## specify the frame numbers
i=nFrames-1
for i in range(0,90,1):
	lmpfname='min'+str(i)+'.lmp'
	export_file(node, lmpfname, "lammps_data", frame=i)




