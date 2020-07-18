# itertools
#
# There are also several combinatoric functions in itertool, such as product and permutation.
# These are used when you want to accomplish a task with all possible combinations of some items.
# Example:

from itertools import product, permutations

letters = ("A", "B")
print(list(product(letters, range(2))))
print(list(permutations(letters)))
