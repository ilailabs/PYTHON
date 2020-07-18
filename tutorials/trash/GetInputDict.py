pairs={
1:"apple",
"Orange":[2, 3, 4],
True:False,
None:"True",
}

print(pairs)
#Number *1:'apple'* isn't added to dic

print(pairs.get("Orange"))
print(pairs["Orange"])  #same as above line
print(pairs.get(7))     # >>None
print(pairs.get(1,'ae its there'))# >>False
print(pairs.get(123,'its not in dic')) # >>its not in dic

print(pairs.get(11,'ae its there'))
#print(dic_name.get(int,'your comments'))
#your comments will be printed if int is not in your dic_name
