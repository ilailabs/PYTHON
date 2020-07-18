a=[5,1,4]
n = len(a)
mov=0
for i in range(n): # i= 0 1 2 3 4 >5 times
    for j in range(0,n-i-1):
        if(a[j]>a[j+1]):
            temp = a[j]
            a[j] = a[j+1]
            a[j+1] = temp
            mov=mov+1

#print(mov)
for i in a:
    print(i)
