"""
calculates the position and displacement of particular atom; specify the particle id;may-19
"""

##to calculate the position of atoms in all frames
lmp_dt = 0.001

import sys
dump_filename = sys.argv[1]
frame =int(sys.argv[2])
#particle_id = int(sys.argv[2])
#dump_filename = "file.dump"
#particle_id = 500

x_position = []
t_ntimestep = []


import matplotlib.pyplot as plt
from ovito.io import *
node = import_file(dump_filename,multiple_frames = True,columns=["Particle_Identifier","Position.X"])

for particle_id in range(2500):
	data_collection = node.compute(frame)
	pos = data_collection.particle_properties.position.array
	t_ntimestep.append(data_collection.attributes['Timestep'])
	x_position.append(pos[particle_id][0])
	#this has the position data of *particle_id* x y z;access x[1][1]

## Plot your results
## to get the x data alone; put 1 or 2 for y or z in x_position[i][]
x_data = []

for i in range(len(x_position)):
	x_data.append(x_position[i]-x_position[0])

t_time = [l*lmp_dt for l in t_ntimestep]

# ploting...
# plt.plot(t_time, x_data)
# plt.xlabel('Time')
# plt.ylabel('Position')
# plt.show()

# print(x_data)
# print(t_timestep)

## Writing to csv file
filename_csv = 'disp'+str(frame)+'.csv'
import csv
with open(filename_csv, 'w') as csvfile:
    writer = csv.writer(csvfile, delimiter=",")
    for row in range(0,len(t_time)):
        myList = []
        myList.append(t_time[row])
        myList.append(x_data[row])
        writer.writerow(myList)
