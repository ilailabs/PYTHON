"""
to know the list of properties availabe; to collect particular particle property; printing in csv; specify the particle id;
"""


lmp_dt = 0.01
import sys
dump_filename = sys.argv[1]
var_name = sys.argv[2]
particle_id = int(sys.argv[3])
#dump_filename = "file.dump"
#particle_id = 500

var_data = []
t_ntimestep = []


import matplotlib.pyplot as plt
from ovito.io import *
node = import_file(dump_filename)

for frame in range(node.source.num_frames):
	data_collection = node.compute(frame)
	t_ntimestep.append(data_collection.attributes['Timestep'])

	## to know all the lis of particle properties `list(data_collection.particle_properties.keys())`
	# var = data_collection.particle_properties.position.array
	var = data_collection.particle_properties[var_name]
	var_data.append(var[particle_id])
	#this has the position data of *particle_id* x y z;access x[1][1]

## Plot your results
## to get the x component data alone give 0 for i; or 1 for y;2 for z in var_data[i][]
calc_data = []

for i in range(len(var_data)):
	#do calculation and append
	temp_data = var_data[i][0]
	calc_data.append(temp_data)

t_time = [l*lmp_dt for l in t_ntimestep]

## ploting...
plt.plot(t_time, calc_data)
plt.xlabel('Time')
plt.ylabel(var_name)
plt.show()

# # print(x_data)
# # print(t_timestep)

## Writing to csv file
col1=t_time;
col2=calc_data;

filename_csv = var_name+str(particle_id)+'.csv'
import csv
with open(filename_csv, 'w') as csvfile:
    writer = csv.writer(csvfile, delimiter=",")
    for row in range(0,len(col1)):
        myList = []
        myList.append(col1[row])
        myList.append(col2[row])
        writer.writerow(myList)
