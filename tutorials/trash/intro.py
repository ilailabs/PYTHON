x = [1, 2, 3, 4, 5] #this is list; array - list, tuple, Set, dict;
#print(x)
#for i in x: #rem semicolon
#	print(i)

xT = (5, 8, 6, 1) #you cannot sort, or delete.
print(xT[1])


l = len(x) #len of the array;# this is variable.
#print(l)

##multiple variable in one line
e1, e2 = x[0], x[1]

print('element 1 and 2 of array x is '+str(e1)+' '+str(e2))

element3 = x[2] #indexing array
print(element3)

x.append(6)
print(x)

x.remove(1) #sort, count, insert
print(x)

X = range(6)
xx = range(3, 7)
xx = range(1,10,2) #6 elements from 0 to 5
print(X)

for i in X:
	print(i)

import matplotlib.pyplot as plt
plt.plot(X)
plt.ylabel('Numbers')
#plt.show()
Xlabel = 'Index'
plt.xlabel(Xlabel)
plt.title('title')
plt.savefig('figNumbers.jpg', dpi=300)

#if and if else
if 1<0:
	print('Statement is true')#' or " indentation is important.
else:
	print('false')
#if else example
a = 200
b = 33
if b > a:
  print("b is greater than a")
elif a == b:
  print("a and b are equal")
else:
  print("a is greater than b")
