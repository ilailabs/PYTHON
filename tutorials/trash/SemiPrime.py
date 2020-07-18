n,v1,v2 =map(int,input().split())
t1 = (1.41*n)/v1
t2 = (2*n)/v2
if t1<t2:
    print("Walk",end="")
else:
    print("Cab",end="")
