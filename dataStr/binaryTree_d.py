class Node:
 def __init__(self, data):
  self.left = None
  self.right = None 
  self.data = data

 def insert(self, data):
  if(data<self.data):
	  if(self.left==None):
	   self.left = Node(data)
	  else:
	   self.left.insert(data)
  elif(data>self.data):
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
root.insert(2)
root.insert(3)
root.insert(4)
root.printTree()

##NOTE:addint it only to one-child


