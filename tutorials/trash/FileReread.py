file=open('textfile1.txt','r')
print('##Reading...')
print(file.read())

#Once the file is read; using again file.read() will be void
print('##Re-reading...')
print(file.read())
