"""
creates the input file to generate the bicrystal from atomsk package;specify the misorientation angle;22-nov-19
"""

## specify theta in inline argument

import sys
mAng=int(sys.argv[1])
the1=-mAng/2
the2=mAng/2
str1='box 200 200.0 0'+'\n'
str2='node 0.25*box 0.5*box 0*box 0 0 '+str(the1)+'\n'
str3='node 0.75*box 0.5*box 0*box 0 0 '+str(the2)

with open("BiDetails.txt",'w') as fnew:
	fnew.write(str1)
	fnew.write(str2)
	fnew.write(str3)
