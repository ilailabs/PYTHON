"""
calculate the position of specific atoms in particular frame; displacement of one atom; particle data of one atom;
"""

particle_id = 749
dump_filename = "/home/elankovan/Documents/E13_longchain_longduration/file.dump"

x_position = []
t_ntimestep = []
lmp_dt = 0.01
# dump_everyN = 100

import matplotlib.pyplot as plt
from ovito.io import *
node = import_file(dump_filename)

for frame in range(node.source.num_frames):
	data_collection = node.compute(frame)
	pos = data_collection.particle_properties.position.array
	t_ntimestep.append(data_collection.attributes['Timestep'])
	x_position.append(pos[particle_id])
	#this has the position data of *particle_id* x y z;access x[1][1]


#to get the x data alone; put 1 or 2 for y or z in x_position[i][]
x_data = []

for i in range(len(x_position)):
	x_data.append(x_position[i][0])

t_time = [l*lmp_dt for l in t_ntimestep]
##ploting...
plt.plot(t_time, x_data)
plt.xlabel('Time')
plt.ylabel('Position')
plt.show()

# print(x_data)
# print(t_timestep)
