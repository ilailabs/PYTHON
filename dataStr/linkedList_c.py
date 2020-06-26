class Node:
 def __init__(self, val=None):
  self.val = val
  self.next = None

class LinkedList:
 def __init__(self):
  self.head = None

 def printList(self):
  temp = self.head
  while(temp):
   print(temp.val)
   temp = temp.next

 def atBegin(self, data_i):
  e0 = Node(data_i)
  "Let's update the list"
  temp = self.head
  self.head = e0
  e0.next = temp

llist = LinkedList()
llist.head = Node("mon")

e3 = Node("wed")
e3.next = None
e2 = Node("tue")
e2.next = e3

llist.head.next = e2

print("before...")
llist.printList()

llist.atBegin("sun")

print("after...\n")
llist.printList()

