str='without,hello,bag,world'
ip_str = str.split(',')

# for i in range(0,len(ip_str)):
#     print ip_str[i]

ip_str.sort()

op_str = ",".join(ip_str)
print(op_str)
