"""
this will return a '<opfile>.csv' which can loaded into matlab for ploting. use this *$PATH_Ovitos ReadFromDump.py 'file.dump' 'Position' 200* to run;returns col1 in number of timesteps only;may-19
"""

## getring ip from command line
import sys
dump_filename = sys.argv[1]
var_name = sys.argv[2]
particle_id = int(sys.argv[3])

var_data = []
t_ntimestep = []

## reading data using ovitos

from ovito.io import *
node = import_file(dump_filename)
for frame in range(node.source.num_frames):
	data_collection = node.compute(frame)
	t_ntimestep.append(data_collection.attributes['Timestep'])
	var = data_collection.particle_properties[var_name]
	var_data.append(var[particle_id])

## writing to csv file
col1=t_ntimestep;
col2=var_data;

filename_csv = var_name+str(particle_id)+'.csv'
import csv
with open(filename_csv, 'w') as csvfile:
    writer = csv.writer(csvfile, delimiter=",")
    for row in range(0,len(col1)):
        myList = []

        myList.append(col1[row])
        myList.append(col2[row])
	## Add more columns to write
        writer.writerow(myList)

print('Wrote '+filename_csv+' Successfully!!!')
