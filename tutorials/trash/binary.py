x,y = [],[]
n,m = map(int,input().split())

for i in range(n):
    l=[]
    for j in range(m):
        l.append(0)
    y.append (l)

for i in range(n):
    a = list(map(int,input ().split)))
    for j in range (m):
        y[i][j] = a[j]
        x.append(y[i][j])

for i in x:
    if i>1:
        print("NO",end = "")
        break
    else:
        print("YES",end = "")
