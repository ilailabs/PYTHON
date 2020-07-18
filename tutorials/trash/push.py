ips = '0 2 3 4 6 7 10'
# ip = [int(s) for s in ips.split(' ')]
ip = map(int, ips.split(' '))

for i in range(0,len(ip)-1):
    if(int(ip[i]) == 0):
        ip.remove(0)
        ip.append(0)

# str1 = ' '.join(ip)
print(''.join(ip))
print(ip)

# print ip
# print(len(ip))
# ip.remove(0)
# print ip
# ip.append(0)
# print ip
