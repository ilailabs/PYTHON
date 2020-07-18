## Linked List

1. [Create a simple linked list of strings `"mon"->"tue"->"wed"`](#1)
2. [Traverse a linked list and print elements of the list](#2)
3. [Insert `"sun"` at the begining](#3)
4. [Insert `"fri"` at the end](#4)
3. [Add element `"thur"` in b/w the nodes](#5)
5. [Now replace the element `"thur"` by `"thu"`]
6. [Count the number of elements in the linked list]
7. [Search an element in a linked list]
5. [Link the start-end nodes, form a circular linked list]
6. [Search an element in the circular liked list]
7. [Insert an element at random position and count the list]

[**linkedList()**](#1) [:file_folder:](../dataStr/linkedList_a.py)
<a name="1"></a>
```python
##prob1 | prob2
class Node:
 def __init__(self, val=None):
  self.val = val
  self.next = None
#node definition

class LinkedList:
 def __init__(self):
  self.head = None
#linkedList definition

llist = LinkedList()
#create an object 'llist'
llist.head = Node("mon")
llist.head.next = e2

e3 = Node("wed")
e2 = Node("tue")
e2.next = e3

llist.printList()

#NOTE:do not include `head` in def
#NOTE:`temp.head` include first element
```

[**traverseLinkedList**](#2) [:file_folder:](../dataStr/linkedList_b.py)
```python
class LinkedList:
  def __init__(self):
    self.head = None

  def printList(self):
    temp = self.head
    while(temp):
      print(temp.val)
      temp = temp.next
#traversing a linked list
llist.printList()
```

[**atBegining**](#3) [:file_folder:](../dataStr/linkedList_c.py)
```python
 def atBegin(self, data_i):
  e0 = Node(data_i)
  "Let's update the list"
  temp = self.head
  self.head = e0
  e0.next = temp
```
```python
llist.atBegin("sun")
```

[**atEnd**](#4) [:file_folder:](../dataStr/linkedList_d.py) [:file_folder:](../dataStr/linkedList_e.py)
```python
 def atEnd(self, data):
  en = Node(data)
  temp = self.head
  while(temp.next):
   temp = temp.next
  temp.next = en
```

```python
 def atEnd(self, data):
  en = Node(data)

  if self.head is None:
   self.head = en
   return
  #base case//only when the list is empty
  temp = self.head
  while(temp.next):
   temp = temp.next
  temp.next = en
```

```python
llist.atEnd("fri")
```

[**Insertion in b/w the nodes**](#5) [:file_folder:](../dataStr/linkedList_f.py)
```python
 def inBetween(self, inode, data):
  ei = Node(data)
  ei.next = inode.next
  inode.next = ei
```
```python
llist.inBetween(e3, "thur")
```

## Further readings 

[Tutorials point python linked list](https://www.tutorialspoint.com/python_data_structure/python_linked_lists.htm)
