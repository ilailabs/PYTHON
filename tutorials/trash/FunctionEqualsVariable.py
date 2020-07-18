#x and y are the varibles
def add(x,y):
    return x+y
#Passing fucntion as a variable
def dotwice(function,x,y):          #in this line 'function' is just a varible
    return function(function(x,y),function(x,y))

a=5
b=6

print('ADD FUNCT...')
print add(3,4)

print('\nDOTWICE FUNCT...')
print dotwice(add,3,2)
