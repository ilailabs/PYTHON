A=raw_input()
A=[int(s) for s in A.split(' ')]
# j=0
B=[]
for i in range(len(A)):
    if (A[i]%3!=0):
         # A.remove(A[i])
         # print(A[i]%3!=0)
         B.append(A[i])


op=str(B[0])
for i in range(len(B)-1):
    op=op+' '+str(B[i+1])
print(op)

# A=[8,9, 6, 5, 3]
# while i in range(len(A)):
#     print(A[i])
#     i=i+1
# print(A[2]%3==0)
