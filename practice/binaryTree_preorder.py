class Node():
	def __init__(self, val=0, left=None, right=None):
		self.val = val
		self.left = left
		self.right = right

root = Node(1)
root.left = Node(2)
root.right = Node(3)

root.left.left = Node(4)
root.left.right = Node(5)

def printPreorder(root):
	if(root):
		print(root.val)
		printPreorder(root.left)
		printPreorder(root.right)

printPreorder(root)

##without any mistakes-firstgo
