D=[10, 20, 30, 40]
# values = input()
# D = list(map(int, input().split(",")))
Q=[]

import math
for i in range(0,len(D)):
    Q.append(int(round(math.sqrt(2*50*D[i]/30))))

print(str(Q).strip('[]'))
