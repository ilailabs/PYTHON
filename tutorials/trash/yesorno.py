# A=raw_input()
# # A=[int(s) for s in A.split(' ')]
# n1=0
# n0=0
# # print len(A)
# for i in range(len(A)):
#     if(A[i]==0):
#         n0=n0+1
#         # print n0
#     elif(A[i]==1):
#         n1=n1+1
#         # print n1
# if(n0>1 or n1>1):
#     print('NO')
# else:
#     print('YES')

A=raw_input()
# A=[1,0,1,1]
no=[]
yes=[]
for i in range(len(A)):
    if(A[i]=='0'):
        no.append(A[i])
    elif(A[i]=='1'):
        yes.append(A[i])

print(len(no))
print(len(yes))

if(len(no)==1 or len(yes)==1):
    print 'YES'
else:
    print 'NO'
