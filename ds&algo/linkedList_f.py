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

 def atEnd(self, data):
  en = Node(data)

  if self.head is None:
   self.head = en
   return

  temp = self.head
  while(temp.next):
   temp = temp.next
  temp.next = en

 def inBetween(self, inode, data):
  ei = Node(data)
  ei.next = inode.next 
  inode.next = ei


llist = LinkedList()
llist.head = Node("mon")

e3 = Node("wed")
e3.next = None
e2 = Node("tue")
e2.next = e3

llist.head.next = e2

llist.atEnd("thur")

llist.inBetween(e2, "dummy")

print("before...")
llist.printList()


print("after...")
llist.printList()



#NOTE:do not include `head` in def
#NOTE:`temp.head` include first element
