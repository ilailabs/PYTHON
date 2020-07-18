filename=input("Enter a filename: ")
# fid=open(filename)
# text=fid.read()
# print(text)
# fid.close() #Re-check the code this isn't printing
with open(filename) as f:
    text=f.read()
   print text
