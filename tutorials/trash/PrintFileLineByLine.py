file=open("numbers.txt","r")
# print(file.read())          #>> *print all cont of file*
#print(file.read(10))        #>>this is un #prints first 10 char
print(file.read(13))        #return is considered as one char; prints next line
# for ii in file:
#     print(ii)
file.close()
