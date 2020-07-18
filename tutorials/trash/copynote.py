filename='ilai.txt'
import pyperclip as mod

str=mod.paste()+'\n'
file = open(filename,'a')
file.write(str)
file.close()
# [ref](https://python-forum.io/Thread-Automatically-read-copied-text-from-keyboard-shortcuts)
