"""
calculates the position & displacement of all atoms in the dump file (for all frames) and prints a *.csv file;20-nov-19
"""


## to calculate the position of atoms in all frames
var1_name='Position'
var2_name='c_dsp[1]'
import sys
dump_filename = sys.argv[1]


var1_data = []
var2_data = []
t_ntimestep = []

from ovito.io import *
import matplotlib.pyplot as plt
node = import_file(dump_filename)

data_collection = node.compute(0)
Nparticles = len(data_collection.particle_properties.position.array)
numframes = node.source.num_frames

for frame in range(0,numframes,10):
	for i in range(0,Nparticles):
		particle_id = i
		#print(particle_id)
		data_collection = node.compute(frame)
#		pos = data_collection.particle_properties['Position']
		t_ntimestep.append(data_collection.attributes['Timestep'])

		var1 = data_collection.particle_properties[var1_name]
		var1_data.append(var1[particle_id][0])
		#this has the position data of *particle_id* x y z;access x[1][1]

		var2 = data_collection.particle_properties[var2_name]
		var2_data.append(var2[particle_id])

	# plt.plot( 'x', 'y', data=df, linestyle='', marker='o', markersize=0.7)

#	plt.plot(var1_data, var2_data, color='blue', linewidth=0.5)
	plt.scatter(var1_data, var2_data, color='blue', s=0.05 )
	plt.ylim(-0.25, 0.25)
#	plt.ylim(0.00, 0.00008)
	xlabel_name = 'timestep '+str(frame)
	plt.xlabel(xlabel_name)
	plt.ylabel(var2_name)
	plot_name='mov_'+str(frame)+'.png'
	plt.savefig(plot_name, dpi=300)
	
#
	# ## Writing to csv file
	filename_csv = 'disp'+str(frame)+'.csv'
	import csv
	with open(filename_csv, 'w') as csvfile:
	     	writer = csv.writer(csvfile, delimiter=",")
	     	for row in range(0,len(var1_data)):
                 myList = []
                 myList.append(var1_data[row])
                 myList.append(var2_data[row])
                 writer.writerow(myList)
	var1_data = []
	var2_data = []
	plt.clf()
