file=open("newfile.txt","r")
print("Reading initial contents")
print(file.read())
print("Finished")

file=open("newfile.txt","w")
file.write("Some new text")
file.close()

file=open("newfile.txt","r")
print(file.read())
print("Finished")
file.close()
