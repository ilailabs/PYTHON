"""
ovito python make displacemnt vs position plot;9-aug-19;
"""

## to calculate the position of atoms in all frames
var1_name='Position'
var2_name='c_dsp[1]'
#var2_name='c_eng'
import sys
dump_filename='file.dump'
# dump_filename = sys.argv[1]
# frame =int(sys.argv[2])

var1_data = []
var2_data = []
t_ntimestep = []



from ovito.io import *
import matplotlib.pyplot as plt
node = import_file(dump_filename)

data_collection = node.compute(0)
Nparticles = len(data_collection.particle_properties.position.array)
numframes = node.source.num_frames
ctr = 0
for frame in range(0,numframes,100):
	for particle_id in range(15,10000,10):
		data_collection = node.compute(frame)
		#pos = data_collection.particle_properties.position.array
		t_ntimestep.append(data_collection.attributes['Timestep'])

		var1 = data_collection.particle_properties[var1_name]
		var1_data.append(var1[particle_id][0])
		#this has the position data of *particle_id* x y z;access x[1][1]

		var2 = data_collection.particle_properties[var2_name]
		particle = particle_id + ctr
#		print(particle)
		var2_data.append(var2[particle])
		

	# plt.plot( 'x', 'y', data=df, linestyle='', marker='o', markersize=0.7)

	plt.plot(var1_data, var2_data, color='blue', linewidth=0.5)
	plt.plot(400,0,'ro',markersize=1)
	plt.plot(600,0,'ro',markersize=1)
	plt.ylim(-0.03, 0.03)
#	plt.ylim(0.00, 0.00004)
	xlabel_name = 'timestep '+str(frame)
	plt.xlabel(xlabel_name)
	plt.ylabel(var2_name)
	plot_name='dis'+str(frame)+'.png'
	plt.savefig(plot_name, dpi=300)
	var1_data = []
	var2_data = []
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
