z, matrix = int(input()), []

for i in range(0,z):
    l = list(map(int, input().split()))
    matrix.append(l)
m, n = z,z
k, l,count = 0, 0, 0
total = z*z

while (k < m and l , n):
    if (count == total):
        break

    for i in range(k,m):
        print(matrix[i][l],end = " ")
        count +=1

    l +=1

    if (count == total):
        break

    for i in range(l,n):
        print(matrix[m - 1][i], end = " ")
        count +=1
    m -= 1

    if(count == total):
        break
    if(k<m):
        for i in range(m-1,k-1, -1):
            print(matrix[i][n-1],end=' ')
            count +=1
    n -=1
    if (count == total):
        break

    if(l<n):
        for i in range(n-1, l-1m, -1):
            print(matrix[k][i], end=" ")
            count +=1

    k +=1
