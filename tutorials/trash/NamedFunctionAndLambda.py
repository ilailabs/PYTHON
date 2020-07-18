#Named function
def polynomial(x):
    return x**2+5*x+4
print(polynomial(-4))

#lambda
print((lambda x:x**2+5*x+4)(-4))

#its rare we do this; better to def func
double=lambda x: x*2
print(double(7))
