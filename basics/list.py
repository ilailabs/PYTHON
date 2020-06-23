py_list=["eggs","nuts","peas"]
if("eggs" in py_list):
 print("already in list")
else:
 print("adding to list")
 py_list.append("eggs")

edges1=[i for i in range(5)]
cubes11=[i**3 for i in range(5)]
cubes12=[edges1[i]**3 for i in range(5)]

edges2=[2, 4, 1, 7]
cubes21=[edges2[i]**3 for i in range(len(edges2))]

import random 
edges3=[random.randint(5,10) for i in range(5)]

print(edges3)
