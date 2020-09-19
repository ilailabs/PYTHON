"""
Using *for* loops
"""

## when the no of itereations are known
## range(10) iterates upto 9
print("example-01")
for i in range(10):
 print(i)

## range(n1,n2): iterates (n2-n1) number of times
print("example-02")

nloop=0
for i in range(10,12):
 nloop=nloop+1 # n2-n1
 print(i)
print(nloop)

## range(0,2,20) with step size 2; note: 0 included and 20 excluded;n_iter=(l-a)/d
print("example-03")

nloop=0
for i in range(0,20,2):
 print(i)
 nloop=nloop+1
print(nloop)

## for item in a list 
print("example-04")

list1=["apple","banana","orange"]
for item in list1:
 print(item)

## if inside a for loop 
print("example-05")

for i in range(10):
 if(i%2==0):
  print("even")
 else: 
  print("odd")

## generate a list using for
print("example-06")

list2=[i for i in range(10)]
print(list2)

## generate even numbers; append to finite-list; alwasys prefer
print("example-07")

nn=10
even_list=[None]*nn
for i in range(1,nn+1):
 enum=i*2
 even_list[i-1]=enum
print(even_list)

## generate even numbers; append to infinite-list;
print("example-07")

nn=10
even_list=[]
for i in range(1,nn+1):
 enum=i*2
 even_list.append(enum)
print(even_list)
