f=open("numbers.txt")
print(f.read())
f.close()

#same as above with TRY and FINALLY
try:
    f=open("numbers.txt")
    print(f.read())
finally:
    f.close()
