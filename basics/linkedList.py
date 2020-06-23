class Node:
    def __init__(self, data = None):
        self.data = data
        self.next = None

class LinkedList:
    def __init__(self):
        self.head = None

    def printList(self):
        temp = self.head
        while(temp):
            print(temp.data)
            temp = temp.next

llist = LinkedList()
llist.head = Node("mon")

e2 = Node("tue")
e3 = Node("wed")
e4 = Node("thur")
e5 = Node("fri")
e6 = Node("sat")

llist.head.next = e2
e2.next = e3
e3.next = e4
e4.next = e5
e5.next = e6

llist.printList()
