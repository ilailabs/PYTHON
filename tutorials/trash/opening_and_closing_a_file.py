#by default read mode
myfile=open("testfile.txt")
#read mode
open("testfile.txt","r")
#write mode
open("testfile.txt","w")
#binary wrtie mode
open("filename.txt","wb")

#every file which is opened must be closed
myfile.close()
