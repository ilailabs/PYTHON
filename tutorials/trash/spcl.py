str1='my name is Amit Verma'
L = list(str1) #this will conv string to list
print L
#this will conv list of char to ascii
# print(list(map(str, map(ord, L))))
A = list(map(str, map(ord, L)))
# print A
cnt=0
for i in range(0,len(A)):
    if(int(A[i]) < 65 and int(A[i]) > 32):
        # print("YES")
        cnt +=1
    # else:
    #     print("NO")
    # print(A[i])

if(cnt >= 1):
    print("YES")
else:
    print("NO")
