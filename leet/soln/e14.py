"""
14. Longest common prefix
Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".

Example 1:

Input: ["flower","flow","flight"]
Output: "fl"
Example 2:

Input: ["dog","racecar","car"]
Output: ""
Explanation: There is no common prefix among the input strings.
Note:

All given inputs are in lowercase letters a-z.
"""

# input1=["ilai","elango"]

# l1=len(input1)
# input1_len=[None]*l1
#
# for i in range(l1):
#     strl=len(input1[i])
#     input1_len[i]=strl
#
# nloop=4#min(input1_len)
# #
# # # for i in range(nloop):
# # #     str_var=input1[i]
# # #     a=str_var[0:0]
#
# prefix=""
#
# ctr=0
# for i in range(4):
#     temp_str=input1[i]
#     print(temp_str)
#     # temp_pre=temp_str[0:ctr]
#
# print(prefix)

#############################################

def isMatch(myArray):
    element=myArray[0]
    ctr=0
    for i in myArray:
        if(i==element):
            ctr=ctr+1

    if(ctr==len(myArray)):
        return element
    else:
        # print("no match")
        return ""


####################################

input1=["dog","racecar","car"]
prefix=""
ctr=0
temp_arr=[]


# for i in input1:
#     temp_var=i[0]
#     temp_arr.append(temp_var)
#     prefix=isMatch(temp_arr)
#
# print(prefix)

# len_ip1=[len(strs) for strs in input1]
# print(min(input1))

str_element=min(input1)

for i in range(len(str_element)):
    ele=(str_element[0:(i+1)])
    # print(ele)
    ctr1=0
    for str_ip in input1:
        # print("for element:" + ele + " | string is:" + str_ip)
        # print("for element:" + ele + " | string is:" + str_ip[0:len(ele)])
        if(ele==str_ip[0:len(ele)]):
            ctr1=ctr1+1
        # print("for element:" + ele + " | string is:" + str_ip[0:len(ele)] + " | count is:"+str(ctr1))

        if(ctr1==len(input1)):
            prefix=ele
            # print(prefix)

print(prefix)

######################################

input1=["dog","racecar","car"]
prefix=""
ctr=0
temp_arr=[]
str_element=min(input1)

for i in range(len(str_element)):
    ele=(str_element[0:(i+1)])
    ctr1=0
    for str_ip in input1:
        if(ele==str_ip[0:len(ele)]):
            ctr1=ctr1+1
        if(ctr1==len(input1)):
            prefix=ele
print(prefix)



