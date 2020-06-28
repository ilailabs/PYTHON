class Node:
 def __init__(self, data):
  self.left = None
  self.right = None 
  self.data = data

 def printTree(self):
  if(self.left):
   self.left.printTree()
  print(self.data)
  if(self.right):
   self.right.printTree()

root = Node(0)
root.left = Node(1)
root.right = Node(2)

root.left.left = Node(3)
root.left.right = Node(4)

root.right.left = None
root.right.right = Node(5)

root.printTree()
