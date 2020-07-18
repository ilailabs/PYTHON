#combine two sets and find x grater than 1 alone
nums = {1,2,3,4,5,6}
nums = {0 , 1, 2, 3} & nums
nums = filter(lambda x: x>1, nums)
print(len(nums))

#power x y

def power(x,y):
    if y == 0:
        return 1
    else:
        return x * power(x,y-1)

print(power(2,3))

a = (lambda x: x*(x+1))(6)
print(a)

# to filter only the even number
numbers = [1, 2, 8, 3, 7]
res = list(filter(lambda x: x%2 == 0, numbers))
print(res)
