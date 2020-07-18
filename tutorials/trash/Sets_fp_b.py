# Sets can be combined using mathematical operations.
# The union operator | combines two sets to form a new one containing items in either.
# The intersection operator & gets items only in both.
# The difference operator - gets items in the first set but not in the second.
# The symmetric difference operator ^ gets items in either set, but not both.

first = {1,2,3,4,5,6}
second = {4, 5, 6, 7, 8, 9}

print(first | second) #combines both
print(first & second) #only common element
print(first - second) #subtract
print(first^second) #removed the intersection ele
