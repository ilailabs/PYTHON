n=int(input('Enter size: '))

A=[[5,3,2],[2,33,4],[1,4,5]]
for i in range(n):
    for j in range(n):
        if(i>j):
            A[i][j]=0

for i in range(n):
    print(A[i])
