"""
calculates the position and displacemnt and make animation
"""

##to calculate the position of atoms in all frames
lmp_dt = 1e-3

import sys
dump_filename = sys.argv[1]
particle_id = int(sys.argv[2])
particle_ind = particle_id-1;
x_data = []
t_ntimestep = []

import matplotlib.pyplot as plt
from ovito.io import *
node = import_file(dump_filename)
nFrames = node.source.num_frames

for frame in range(0,nFrames,1):
	data_collection = node.compute(frame)
	pos = data_collection.particle_properties['c_dsp[1]']
	t_ntimestep.append(data_collection.attributes['Timestep'])
	x_data.append(pos[particle_ind])
	#this has the position data of *particle_id* x y z;access x[1][1]

## Plot your results
t_time = [l*lmp_dt for l in t_ntimestep]

plt.plot(t_time, x_data, color='blue', linewidth=0.5)
plt.ylim(-0.01, 0.01)
#plt.ylim(0.00, 0.00008)
xlabel_name = 'timestep '+str(frame)
plt.xlabel('Time')
plt.ylabel('Disp')
plot_name=str(particle_id)+'.png'
plt.savefig(plot_name, dpi=300)

#------------------------------------------------------------------------------------------#

## Writing to csv file

# filename_csv=str(particle_id)+'.csv'
# import csv
# with open(filename_csv, 'w') as csvfile:
#     writer = csv.writer(csvfile, delimiter=",")
#     for row in range(0,len(t_time)):
#         myList = []
#         myList.append(t_time[row])
#         myList.append(x_data[row])
#         writer.writerow(myList)
