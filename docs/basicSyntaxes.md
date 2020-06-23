## Basic Sytaxes in Python

Getting started guide.

[print()](../basics/print.py)
-------------------------------------------
```python
print("I\'m exicted")
#how to include quotes

str1="Thank"
str2="You"
print(str1+str2)
#concatenate strings

double_val = 1.1
int_val = int(double_val)
a=int_val
print(a)
print("a="+str(a))
#converting double to integer
#converting interger to variable
#printing variable and variable as string

print('Every expert was\nOnce a begineer')
#new line

print("Please! "*100)
#printing same string
```

[if()]()
--------
```python
def isEven(a):
 if(a%2==0):
  return True
 else:
  return False

a=input("ip::a=")
isEven(a)
```

[for()](../basics/for.py)
---------------------------------------
```Python
for i in range(10):
  print(i)
  #prints 0 to 9
```

[while()](../basics/while.py)
-----------------------------
```python
i=0
while(i<10):
 print(i)
 i+=1
```

[userFunction()](../basics/userFunction.py)
--------------------------------------------

```Python
##example1
def greet():
 print("Have a good day")

greet()
#calling greet userDefFunction

##example2
def greetThem(name):
 "fucntion docs: About this function here for author ref"
 print("Have a good day "+name)

greetThem("ilai")

##example3
def isEven(a):
 if(a%2==0):
  return True
 else:
  return False
#NOTE: you can only ip str variable types
#NOTE: once *return True* is executed, it ends.
```

[operators "//","%"](../basics/operators.py)
--------------------------------------------
```python
num=7
den=3
quotient=7//3
reminder=7%3
print(quotient)
print(reminder)
```

[list](../basics/list.py)
-------------------------
```python
py_list=["eggs","nuts","peas"]
if("eggs" in py_list):
 print("already in list")
else:
 print("adding to list")
 py_list.append("eggs")
 #adds to the list end

edges1=[i for i in range(5)]
cubes1=[i**3 for i in range(5)]
cubes2=[edges1[i]**3 for i in range(5)]
#list-comphrehension

edges2=[2, 4, 1, 7]
import random
#imporing a library
edges3=[random.randint(5,10) for i in range(5)]
#includes int 5 and 10
cubes21=[edges2[i]**3 for i in range(len(edges2))]
 ```

[dictionary](../basics/dict.py)
------------------------------
```Python
dict_var = {1:"uno", 2:"dos", 3:"tres", 4:"cuatro", 5:"cinco", 6:"seis", 7:"siete", 8:"ocho", 9:"nueve"}

print(dict_var[5])

dict_var.update({10:"diez"})
#updating a new value pair

print(2 in dict_var)
#returns *True*; checks the key 2
print("dos" in dict_var)
#returns *False*; "dos" is value of key 2; not is key list

mixed_var={
1:"uno",
2:"dos",
"fruits":["apples","oranges","banana"],
"apples":5,
}

print(mixed_var["apples"])
#use only when you are sure about key "apples" is present
print(mixed_var.get("apples"))
#use get() if you are not sure of the key
print(mixed_var.get("vegetables"))
#this returns *None*
#note: use only var[] to call
```

[import library](../basics/library.py)
----------------------------------------
```python
import random
#python module which has many functions like randint()
i=random.randint(1,10)

import random as rnd
#importing a module with nick name
j=rnd.randint(1,2)
print(j)

import math as mathModule
print(mathModule.sqrt(5))

from math import pi, sqrt
#imporing only specifed constans and functions instead of all

from math import sqrt as square_root

print(square_root(7))
print(pi)
print(sqrt(3))
```
