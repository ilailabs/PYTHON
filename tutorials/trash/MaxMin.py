# nlist=[2 3 4 5 6]
# print nlist
#
# nlist.sort()
# n=len(nlist)
# #print n
# print(str(nlist[0]),' ',str(nlist[n-1]))

# num=input() #you have to give in 'type'
num_string=raw_input() #this is a string attribute and sort cannot be used
#num=int(num) #this will work for >int('23') >int('2 3') will not work
# map(numlist, num.split(' '))
num_list=[int(s) for s in num_string.split(' ')]
# print(num[0],num[1]) #this will print as list
#print('1 2') #this is expected.
# op='1'+' '+'2' #this is expected
# print(op)
num_list.sort()
l=len(num_list)
op=str(num_list[0])+' '+str(num_list[l-1])
# op=num[0]
print(op)
