#End-sort

a=[1,3,2,4,5]
n = len(a)
mov=0
for i in range(n):
    for j in range(0,n-i-1):
        if(a[j]<a[j+1]):
            temp = a[j+1]
            a[j+1] = a[j]
            a[n-1]= temp
        #    a[j+1] = a[j]
        #    a[j] = temp
            mov=mov+1

#print(mov)
for i in a:
    print i
