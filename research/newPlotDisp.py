"""
Displacement of atoms wrt position; net displcements from x, y z components; oct-19
"""

## to calculate the position & equivalent disp of atoms in all frames
lmp_dt = 0.01

import sys
dump_filename = sys.argv[1]
particle_ind = int(sys.argv[2])
particle_id = particle_ind - 1


disp = []
t_ntimestep = []

import matplotlib.pyplot as plt
from ovito.io import *
node = import_file(dump_filename)
nFrames=node.source.num_frames

for frame in range(0,nFrames,1):
	data_collection = node.compute(frame)
	disx = data_collection.particle_properties['c_dsp[1]']
	disy = data_collection.particle_properties['c_dsp[2]']
	disz = data_collection.particle_properties['c_dsp[3]']
	netDisp=(disx[particle_id]**2 + disy[particle_id]**2 + disz[particle_id]**2)**0.5
	disp.append(netDisp)

	t_ntimestep.append(data_collection.attributes['Timestep'])
# 	#this has the position data of *particle_id* x y z;access x[1][1]
#
# 
t_time = [l*lmp_dt for l in t_ntimestep]
#
plt.plot(t_time, disp, color='blue', linewidth=0.5)
# #plt.scatter(t_time, x_data, color='blue', s=0.05 )
# #plt.ylim(-0.01, 0.01)
# #plt.ylim(0.00, 0.00008)
xlabel_name = 'timestep '+str(frame)
plt.xlabel('Time')
plt.ylabel('Disp')
plot_name=str(particle_ind)+'.png'
plt.savefig(plot_name, dpi=300)
#
# 
# 
# filename_csv=str(particle_ind)+'.csv'
# import csv
# with open(filename_csv, 'w') as csvfile:
#     writer = csv.writer(csvfile, delimiter=",")
#     for row in range(0,len(t_time)):
#         myList = []
#         myList.append(t_time[row])
#         myList.append(x_data[row])
#         writer.writerow(myList)
