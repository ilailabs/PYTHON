"""
Used to insert the screenshots taken into an md file; makes life easier; hobby project idea
"""

import sys
import os, fnmatch

## PathTo='DeepLearning'
PathTo=str(sys.argv[1])
PathToNotes=PathTo+'/notes.md'

listOfFiles = os.listdir('.')
tlist=[]
pattern = "*.mp4"
for entry in listOfFiles:
    if fnmatch.fnmatch(entry, pattern):
            #print (entry)
            tlist.append(entry)

## Writing to notes.md file
FileHandle=open(PathToNotes,'a')
for line in tlist:
    string='['+line+'](main/'+line+')<br>'
    FileHandle.write(string)
    FileHandle.write("\n")

FileHandle.write('\n')
FileHandle.close()
## Notes: https://stackabuse.com/python-list-files-in-a-directory/
