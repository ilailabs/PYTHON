list1 = [5, 3, 6, 2, 4]
print(list1)

list1.sort()

n=len(list1)
list2=[None]*2*n

ctr=0
for i in range(n):
    list2[ctr]=list1[i]
    ctr+=2

print(list2)
