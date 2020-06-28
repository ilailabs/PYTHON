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

 def atBegin(self, data):
  e0 = Node(data)
  temp = self.head
  self.head = e0
  e0.next = temp

 def atEnd(self, data):
  en = Node(data)
  temp = self.head
  while(temp.next):
   temp = temp.next

  temp.next = en

 def atNode(self, node, data):
  ei = Node(data)
  temp = self.head 
  while(temp):
   temp = temp.next
   if(temp==node):
    ei.next = temp.next
    temp.next = ei

 def rmNode(self, key):
  temp = self.head
  while(temp):
   if(temp.val==key):
    #print(temp.val)
    break
    temp = temp.next
    return
   temp = temp.next

  #temp = temp.next

  #prev.next = temp


llist = LinkedList()

e3 = Node("wed")

e2 = Node("tue")
e2.next = e3

llist.head = Node("mon")
llist.head.next = e2

llist.atBegin("sun")
llist.atEnd("thur")
llist.atNode(e2,"dummy")

llist.rmNode("dummy")

llist.printList()







##error: self has no attribute "next"
##NOTE: while(temp.next):


