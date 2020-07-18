"""
reads the set of log files and extracts the GBE data from a particular line
"""


PE = []
fNum = []
ii=7
jj=10
for j in range(ii,jj+1,1):
	fName = str(j)+".log"
	print('reading'+fName)
	fil = open(fName)
	fl = fil.readlines()
	lno = 0

	with open(fName) as fsrc:
		for line in fsrc:
			lno=lno+1
			## GBE; edit this line
			if 'print "GBE (eV/Ang) = ${gbe}"' in line:
				string=fl[lno]

	str_val = string.split()
	pe=str_val[3]
	print(str_val)
	PE.append(pe)
	fNum.append(j)

print(PE)
print(fNum)

## Writing to csv file
filename_csv='RESULTS.csv'
import csv
with open(filename_csv, 'w') as csvfile:
    writer = csv.writer(csvfile, delimiter=",")
    for row in range(0,len(PE)):
        myList = []
        myList.append(fNum[row])
        myList.append(PE[row])
        writer.writerow(myList)


