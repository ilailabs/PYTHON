"""
renames the atom id from the file "hexPlane30.lmp" with the sequance of atom ids as specified;nov-19;
"""

with open("hexPlane30.lmp",'r') as fImp:
	line = fImp.readlines()

#print(len(line))

#get num of atoms
str1 = line[1]
str1_temp = str1.split()
nAtoms = int(str1_temp[0])

#make it free surface
line[3]='-100.0 9900.0 xlo xhi\n'
line[4]='-100.0 233.0 ylo yhi\n'

lno = 13
for i in range(nAtoms):
	str2 = line[lno]
	str2_temp = str2.split()
	str2_temp[0]=str(i+1)
	str3 = " ".join(str2_temp)
	str3=str3 + '\n'
	line[lno]=str3
	lno=lno+1

## writing to a text file
with open("newPlane.lmp",'w') as fNew:
	fNew.writelines(line)

print('******renamed_atom_id********')


