pairs={
1:"apple",
"orange":[2, 3, 4],
True:False,
None:"True",
}

print(pairs.get("orange"))
print(pairs.get(7))
print(pairs.get(1,"ae its there"))  #this results in false
print(pairs.get(12345,"this is not in dict"))
