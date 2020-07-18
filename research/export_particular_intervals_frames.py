"""
Exports dump files into lmp files using *ovitos*;19-nov-19
"""

from ovito.io import *
fname='h1dump.min'
node=import_file(fname,multiple_frames = True)
nFrames=node.source.num_frames

#for i in range(0,nFrames,100):
## change frame numbers here
for i in range(85,95,1):
	lmpfname='min'+str(i)+'.lmp'
	export_file(node, lmpfname, "lammps_data", frame=i)


