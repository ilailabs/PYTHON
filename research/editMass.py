"""
Updated the mass of lmp file created from ovito python;oct-19
"""

import sys
fname=sys.argv[1]
with open(fname,'r') as file:
    data = file.readlines()

## specify mass here
data[9]='1 28.085\n'
#data[10]='2 26.98\n'

with open(fname,'w') as file:
    file.writelines(data)
