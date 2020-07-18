# size=5
# A = [1, 2, 3, 9, 4]
size=int(input())
A = [int(x) for x in input().split(' ')]

index=int(input())
for i in range(size+1):
    # print(A[i])
    if(i==index):
        element=A[index-1]

print(element)
A.sort()

for j in range(size+1):
    # print(A[j])
    if(A[j]==element):
        print(j+1)
