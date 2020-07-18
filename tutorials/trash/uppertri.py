m = []
n = int(input())

for i in range(n):
    l = list(map(int,input().split()))
    m.append(l)

for i in range(n):
    for j in range(n):
        if i>j:
            m[i][j]=0

for i in range(n):
    if(i!=0):
        print()
    for j in range(n)
        if(j == (n-1)):
            print(m[i][j],end ='')
        else:
            print(m[i][j],end =' ')
