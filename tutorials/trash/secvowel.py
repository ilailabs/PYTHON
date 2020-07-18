s = input()
v = ['a','e','i','o','u']

print(s[0],end='')

for i in range(1,len(s)):
    if ((s[i-1] not in v) or (s[[i] not in v])):
        print(s[i],end='')
