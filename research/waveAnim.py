"""
creates a wave animation from reading the dump file displacement data; prints the sequance of *.png images; aug-19
"""

##to calculate the position of atoms in all frames
var1_name='Position'
var2_name='c_dsp[1]'
import sys
dump_filename1 = sys.argv[1]
dump_filename2 = sys.argv[2]


var1_data = []
var2_data = []
t_ntimestep = []

from ovito.io import *
import matplotlib.pyplot as plt
node1 = import_file(dump_filename1)
node2 = import_file(dump_filename2)

data_collection1 = node1.compute(0)
Nparticles = len(data_collection1.particle_properties.position.array)
numframes = node1.source.num_frames

for frame in range(0,numframes,100):
	for i in range(0,Nparticles):
		particle_id = i
		#print(particle_id)
		data_collection1 = node1.compute(frame)
		data_collection2 = node2.compute(frame)

		t_ntimestep.append(data_collection1.attributes['Timestep'])

		#var1 = data_collection1.particle_properties['Position']
		var1 = data_collection1.particle_properties[var1_name]
		var1_data.append(var1[particle_id][0])
		#this has the position data of *particle_id* x y z;access x[1][1]

		var2 = data_collection2.particle_properties[var2_name] - data_collection1.particle_properties[var2_name]
		var2_data.append(var2[particle_id])

#	plt.plot(var1_data, var2_data, color='blue', linewidth=0.5)
	plt.scatter(var1_data, var2_data, color='blue', s=0.05 )
	plt.ylim(-0.25, 0.25)
	xlabel_name = 'timestep '+str(frame)
	plt.xlabel(xlabel_name)
	plt.ylabel(var2_name)
	plot_name='mov_'+str(frame)+'.png'
	plt.savefig(plot_name, dpi=300)
	
	## Writing to csv file
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
