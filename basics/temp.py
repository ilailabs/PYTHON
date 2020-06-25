class MyClass:
 def __init__(self, name, age): #this is method
  self.name = name #this is property
  self.age = age

 def newMethod(self):
  print("you are doing amazing, "+self.name)

nObj = MyClass("ilangovan",25)

nObj.name = "Elangovan"
nObj.newMethod()
