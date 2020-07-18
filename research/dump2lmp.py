"""
converts the dump file with N number of frames to N number of seperate lmp files; used for finding the GB Min Structure using anhealing technique;
"""

import sys
fname=sys.argv[1]
with open(fname,'r') as fImp:
	line = fImp.readlines()

#print(len(line))

#get num of atoms
str1 = line[3]
str1_temp = str1.split()

strx = line[5]
strx_temp = strx.split()

stry = line[6]
stry_temp = stry.split()

strz = line[7]
strz_temp = strz.split()

nAtoms = int(str1_temp[0])



line[0]="#LAMMPS IP file written by dump2lmp.py\n"
line[1]="\n"
line[2]=str(nAtoms)+" atoms\n\n"
line[3]="1 atom types\n\n"
line[4]=str(strx_temp[0])+" "+str(strx_temp[1])+" xlo xhi\n"+str(stry_temp[0])+" "+str(stry_temp[1])+" ylo yhi\n"+str(strz_temp[0])+" "+str(strz_temp[1])+" zlo zhi\n"
line[5]="Masses\n\n"
line[6]="           1   28.08500000    # Si\n\n"
line[7]="Atoms  # atomic\n"
line[8]="\n"

## writing a text file from series of strings
with open(fname+".lmp",'w') as fNew:
	fNew.writelines(line)



