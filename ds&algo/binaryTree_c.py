class Node:
 def __init__(self, data):
  self.left = None
  self.right = None 
  self.data = data

 def insert(self, data):
  "if left-child is empty insert there;or if right-child is empty insert there"
  if(self.left==None):
   self.left = Node(data)
  else:
   self.left.insert(data)

  if(self.right==None):
   self.right = Node(data)
  else:
   self.right.insert(data)

 def printTree(self):
  if(self.left):
   self.left.printTree()
  print(self.data)
  if(self.right):
   self.right.printTree()

root = Node(0)
root.insert(1)
root.printTree()

##NOTE:flaw::since both left-right-child is empty; '1' is added to both.
