class Node:
 def __init__(self, data):
  self.left = None
  self.right = None 
  self.data = data

 def printTree(self):
  print(self.data)

root = Node(0)

root.printTree()
