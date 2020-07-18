x,y = [],[]
n =  int(input())

for i in range(n):
    a = []
    b = []
    for j in range(n):
        a.append(0)
        b.append(0)
    x.append(a)
    y.append(b)

for i in range(n):
    l = list(map(int,input().split()))
    for j in range(n):
        x[i][j]=l[j]

for i in range(n):
    for j in range(n):
        y[i][j]=x[j][i]

if(x==y):
    print('YES',end='')
else:
    print("NO",end='')
