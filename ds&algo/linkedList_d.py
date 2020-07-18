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

 def atEnd(self, data):
  en = Node(data)
  temp = self.head
  while(temp.next):
   temp = temp.next
  temp.next = en


llist = LinkedList()
llist.head = Node("mon")

e3 = Node("wed")
e3.next = None
e2 = Node("tue")
e2.next = e3

llist.head.next = e2

print("before...")
llist.printList()

llist.atEnd("thur")

print("after...")
llist.printList()

#NOTE:do not include `head` in def
#NOTE:`temp.head` include first element
