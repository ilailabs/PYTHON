# Sets differ from lists in several ways, but share several list operations such as len.
# They are unordered, which means that they can't be indexed.
# They cannot contain duplicate elements.
# Due to the way they're stored, it's faster to check whether an item is part of a set, rather than part of a list.
# Instead of using append to add to a set, use add.
# The method remove removes a specific element from a set; pop removes an arbitrary element.

nums = {1, 2, 1, 3, 1, 4}
print(nums)
nums.add(-7)
nums.remove(3)
print(nums)
