"""
plot ke vs position in csv file;
"""

## to calculate the position, ke of atoms in all frames
lmp_dt = 0.01

import sys
dump_filename = sys.argv[1]
particle_id = int(sys.argv[2])

x_data = []
t_ntimestep = []

import matplotlib.pyplot as plt
from ovito.io import *
node = import_file(dump_filename)

for frame in range(node.source.num_frames):
	data_collection = node.compute(frame)
	pos = data_collection.particle_properties['c_kin']
	t_ntimestep.append(data_collection.attributes['Timestep'])
	x_data.append(pos[particle_id])
	#this has the position data of *particle_id* x y z;access x[1][1]

## PLOT YOUR RESULTS
t_time = [l*lmp_dt for l in t_ntimestep]

plt.plot(t_time, x_data, color='blue', linewidth=0.5)
plt.ylim(-0.00125, 0.00125)
#plt.ylim(0.00, 0.00008)
xlabel_name = 'timestep '+str(frame)
plt.xlabel('Time')
plt.ylabel('Ke')
plot_name=str(particle_id)+'.png'
plt.savefig(plot_name, dpi=300)

## Writing to csv file
filename_csv=str(particle_id)+'.csv'
import csv
with open(filename_csv, 'w') as csvfile:
    writer = csv.writer(csvfile, delimiter=",")
    for row in range(0,len(t_time)):
        myList = []
        myList.append(t_time[row])
        myList.append(x_data[row])
        writer.writerow(myList)


