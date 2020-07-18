# for j in range(0,n-i-1):
#     if(a[j]>a[j+1]):
#         temp = a[j]
#         a[j] = a[j+1]
#         a[j+1] = temp
#         mov=mov+1
mov=0
a=[1,3,5,2,6]
n = len(a)
for i in range(n):
    for j in range(0,n-i-1):
        if(a[j+1]<a[j]):
            temp = a[j+1]
            a[j+1] = a[j]
            a[j] = temp
            mov=mov+1
for i in a:
    print i

print mov
