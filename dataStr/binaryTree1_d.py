class Node(object):
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
	"root;left;right"
	if(root):
		print(root.val)
		printPreorder(root.left)
		printPreorder(root.right)

def printPostorder(root):
	"left;right;root"
	if(root):
		printPostorder(root.left)
		printPostorder(root.right)
		print(root.val)

print("Pre-order::")
printPreorder(root)

print("Post-order::")
printPostorder(root)
