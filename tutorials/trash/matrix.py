num_string=raw_input()
num_list=[int(s) for s in num_string.split(' ')]
# print num_list
m=num_list[0]
n=num_list[1]
s=0
for k in range(m):
    l=[i+1+s for i in range(n)]
    # print l
    string=" ".join(str(x) for x in l)
    print string
    s=k+n
