##example01
class MyClass:
    prop1 = 5
# "MyClass" is a class with property "prop1"

object1 = MyClass()

print(object1.property)


##example02
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age
        #all classes have function called __init__() which is executed when class is initiated; called automatically
	#`self` parameter is a reference to the current instance of the class; you can call with any name

    def myMethod(self):
	print("Hello"+self.name+" have a good day")

p1 = Person("Ilai",25)
#new object `p1` with `name` and `age` properties

print(p1.name)
print(p1.age)
p1.myMethod()

p1.age = 26
#reasign property value

del p1.age
#delete object property 

del p1 
#delete object

class Student(Person):
#creates a new class `Student` with properties and methods from class `Person`x.


