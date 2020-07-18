"""
this function analyses the grain boundary structure and calculates the grain boundary thickness, Gb atomic density, area, etc...
"""

Fno = []
Natoms = []
nGBatoms = []
Lx =[]
Ly = []
Lz = []
Area = []
nDen =[]
gbthick =[]

ii=1
jj=10
for j in range(ii,jj+1,1):
	fName = "data"+str(j)+".lmp"
	print('reading'+fName)
	import sys
	filename = fName
	from ovito.io import *
	node = import_file(filename)
	data_collection = node.output
	csize = data_collection.cell[...]
	lx=csize[0][0]
	ly=csize[1][1]
	lz=csize[2][2]
	#lis=list(data_collection.particle_properties.keys())
	#print(lis)

	parPos = data_collection.particle_properties['Position'].array
	totN=(len(parPos))

	#parTpe = data_collection.particle_properties['Structure Type'].array
	#print(parTpe)

	from ovito.modifiers import *

	node.modifiers.append(IdentifyDiamondModifier())

	#node.modifiers.append(SelectTypeModifier(operate_on = "particles", property = "Structure Type", types = { IdentifyDiamondModifier.Type.OTHER, IdentifyDiamondModifier.Type.CUBIC_DIAMOND_FIRST_NEIGHBOR, IdentifyDiamondModifier.Type.CUBIC_DIAMOND_SECOND_NEIGHBOR })) 

	node.modifiers.append(SliceModifier(normal=(0,0,1), distance=lz/2, slab_width=50))

	#lzh=504.38

	node.modifiers.append(ExpressionSelectionModifier(expression = 'StructureType==1'))
	node.modifiers.append(DeleteSelectedModifier())
	data = node.compute()
	parTpe = data.particle_properties['Position'].array
	n=len(parTpe)
	Z=[]

	for i in range(n):
		Z.append(parTpe[i][2])

	#print(max(Z))
	#print(min(Z))
	thick=abs(max(Z)-min(Z))
	are=lx*ly

	n_den = n/are*thick

	print("Number of TAtoms:"+str(totN))
	print("Number of GBatoms:"+str(n))
	print("Lx:"+str(lx))
	print("Ly:"+str(ly))
	print("Lz:"+str(lz))
	print("Area:"+str(are))
	print("nDen:"+str(n_den))
	print("Thick:"+str(thick))

	Fno.append(j)
	Natoms.append(totN)
	nGBatoms.append(n)
	Lx.append(lx)
	Ly.append(ly)
	Lz.append(lz)
	Area.append(are)
	nDen.append(n_den)
	gbthick.append(thick)

	

## Writing to csv file
filename_csv='RESULTS.csv'
import csv
with open(filename_csv, 'w') as csvfile:
    writer = csv.writer(csvfile, delimiter=",")
    for row in range(0,len(Fno)):
        myList = []
        myList.append(Fno[row])
        myList.append(Natoms[row])
        myList.append(nGBatoms[row])
        myList.append(Lx[row])
        myList.append(Ly[row])
        myList.append(Lz[row])
        myList.append(Area[row])
        myList.append(nDen[row])
        myList.append(gbthick[row])
        writer.writerow(myList)


