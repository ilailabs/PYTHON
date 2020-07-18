A=[2,3,4,5,6];
print A
print(len(A))
for i in range(len(A)-1):
    #print(A[i])
    if (A[i]%3==0):
         A.remove(A[i])
print(A)
