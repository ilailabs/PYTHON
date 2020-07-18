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

llist = LinkedList()
llist.head = Node("mon")

e3 = Node("wed")
e3.next = None
e2 = Node("tue")
e2.next = e3

llist.head.next = e2

llist.printList()

