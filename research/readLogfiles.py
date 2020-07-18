"""
this reads the logfile and extracts the value of the variable "PE" and prints the resutls in a seprate *.csv file; nov-19;
"""

import sys

PE = []
fNum = []
for j in range(47,89,1):
	fName = "min"+str(j)+".lmp_log"
	print('reading'+fName)
	fil = open(fName)
	fl = fil.readlines()
	lno = 0

	with open(fName) as fsrc:
		for line in fsrc:
			lno=lno+1
			## reads the file line upto this string
			if 'Step PotEng KinEng' in line:
				string=fl[lno+1]

	str_val = string.split()
	pe=str_val[1]
	print(pe)
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


