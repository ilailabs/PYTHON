def fnc1(x):
    if x == 0:
        return True
    else:
        return fnc2(x-1)

# print(is_even(0)) #>>True
# print(is_even(4)) #this will throw an error since is_odd(3) isn't def

#lets def is_odd; replace fnc1=is_odd and replace is_even by fnc2

def fnc2(x):
    return not fnc1(x)

print(fnc1(4))
