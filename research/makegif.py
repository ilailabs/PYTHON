"""
Makes *.gif animation;
"""

## to calculate the position of atoms in all frames
var1_name='Position'
var2_name='c_dsp[1]'
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

## node data collection using node.compute
data_collection = node.compute(0)

## particle data extration
Nparticles = len(data_collection.particle_properties.position.array)
numframes = node.source.num_frames

for frame in range(0,numframes,100):
	for particle_id in range(Nparticles):
		data_collection = node.compute(frame)
		pos = data_collection.particle_properties.position.array
		t_ntimestep.append(data_collection.attributes['Timestep'])

		var1 = data_collection.particle_properties[var1_name]
		var1_data.append(var1[particle_id][0])
		## this has the position data of *particle_id* x y z;access x[1][1]

		var2 = data_collection.particle_properties[var2_name]
		var2_data.append(var2[particle_id])

	# plt.plot( 'x', 'y', data=df, linestyle='', marker='o', markersize=0.7)

#	plt.plot(var1_data, var2_data, color='blue', linewidth=0.5)
	plt.scatter(var1_data, var2_data, color='blue', s=0.05 )
	plt.ylim(-1.5, 1.5)
#	plt.ylim(0.00, 0.00008)
	xlabel_name = 'timestep '+str(frame)
	plt.xlabel(xlabel_name)
	plt.ylabel(var2_name)
	plot_name=var2_name+'_'+str(frame)+'.png'
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
