list1 = [5, 3, 6, 2, 4, None,8,1,None,None,None,7,9]
print(list1)

for r in range(list1.count(None)):
        list1.remove(None)

print(list1)

list1.sort()

print(list1)

n=len(list1)
list2=[None]*(2*n-1)

ctr=0
for i in range(n):
    list2[ctr]=list1[i]
    ctr+=2

print(list2)

