##example1
def greet():
 print("Have a good day")

##example2
def greetThem(name):
 print("Have a good day "+(name))


##example3
def isEven(a):
 print("a="+str(a))
 if(a%2==0):
  print("returns true")
  return True
 else:
  print("return false")
  return False

a=input("a=")
isEven(3)


