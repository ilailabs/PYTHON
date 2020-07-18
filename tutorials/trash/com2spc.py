import sys
fname1=sys.argv[1]
print(fname1)
with open(fname1,'r') as file:
    data = file.readlines()

str1=data[0]
data[0]=str1.replace(","," ")

with open(fname1,'w') as file:
    file.writelines(data)


