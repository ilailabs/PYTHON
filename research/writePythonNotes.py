"""
Copies all the *.py file into *.md file with about information and comments; documentation purpose; Using this file i created "MY PYTHON DOCUMENTATION"
"""

import sys
import os, fnmatch

def readabout(ipfile):
	fsrc=open(ipfile,"r")
	about=''

	for line in fsrc:
		if '"""' in line:         
		 about=about+next(fsrc)
	fsrc.close()
        about=about.replace("\n","")
	return about


def readcmts(ipfile):
	fsrc=open(ipfile,"r")
	comments=''

	for line in fsrc:
		if '##' in line:         
		 comments=comments+line
	fsrc.close()
        comments=comments.replace("\n","")
	return comments


#PathTo='DeepLearning'
#PathTo=str(sys.argv[1])
#PathToNotes=PathTo+'/notes.md'
PathToNotes='notes.md'

listOfFiles = os.listdir('.')
tlist=[]
pattern = "*.py"
for entry in listOfFiles:
    if fnmatch.fnmatch(entry, pattern):
            #print (entry)
            tlist.append(entry)

## Writing to notes.md file; writng to a file
FileHandle=open(PathToNotes,'a')
for line in tlist:
    function=readabout(line)
    comments=readcmts(line)
    string='| ['+line+'](research/'+line+') | '+function+' | '+comments+'|'
    FileHandle.write(string)
    FileHandle.write("\n")

FileHandle.write('\n')
FileHandle.close()
## [ref](https://stackabuse.com/python-list-files-in-a-directory/)



