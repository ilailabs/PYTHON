"""
calculates the total energy of all the column of atoms in each dump frames
"""

## to calculate the tot ene of all the columns of atoms in all frames
var1_name='Position'
import sys
import numpy as np
dump_filename='file.dump'

var1_data = []
var2_data = []
var3_data = []
varT_data = []
var_sum = []
t_ntimestep = []



from ovito.io import *
import matplotlib.pyplot as plt
node = import_file(dump_filename)

data_collection = node.compute(0)
Nparticles = len(data_collection.particle_properties.position.array)
numframes = node.source.num_frames
## specify the particle properties an "c_eng" and "c_kin"
for frame in range(0,numframes,100):
	var1 = data_collection.particle_properties[var1_name]
	var2 = data_collection.particle_properties['c_eng']
	var3 = data_collection.particle_properties['c_kin']
	for clumn in range(0,10000,10):
		data_collection = node.compute(frame)
		#pos = data_collection.particle_properties.position.array
		t_ntimestep.append(data_collection.attributes['Timestep'])


		var1_data.append(var1[clumn][0])
		for particle_in in range(0,10):
		#this has the position data of *particle_id* x y z;access x[1][1]
			var2_data.append(var2[particle_in+clumn])
			var3_data.append(var3[particle_in+clumn])
		varT_data = [var2_data[i] + var3_data[i] for i in range(len(var2_data))] 
		var_sum.append(np.sum(varT_data))
		varT_data = []

	print('printing frame '+str(frame)+'...')
	# plt.plot( 'x', 'y', data=df, linestyle='', marker='o', markersize=0.7)
#
	plt.plot(var1_data, var_sum, color='blue', linewidth=0.5)
# #	plt.ylim(-0.03, 0.03)
	plt.ylim(0.00, 0.0065)
	xlabel_name = 'timestep '+str(frame)
	plt.xlabel(xlabel_name)
	plt.ylabel('Tot Eng')
	plot_name='TE'+str(frame)+'.png'
	plt.savefig(plot_name, dpi=300)
	var1_data = []
	var2_data = []
	var3_data = []
	varT_data = []
	var_sum = []
	plt.clf()

## Writing to csv file

# filename_csv = 'disp'+str(frame)+'.csv'
# import csv
# with open(filename_csv, 'w') as csvfile:
#     writer = csv.writer(csvfile, delimiter=",")
#     for row in range(0,len(var1_data)):
#         myList = []
#         myList.append(var1_data[row])
#         myList.append(var2_data[row])
#         writer.writerow(myList)
