"""
* delete new line
* give space
* insert | in that line
"""

PathToNotes='temp_edited.md'

filen="temp.md"
file1 = open(filen, 'r')
Lines = file1.readlines()

filehandle=open("temp_edited.md","a")


ctr=0
str1=''

for line in Lines:
 ctr=ctr+1
 if(ctr%2==1):
  number=(line.strip())
 if(ctr%2==0):
  str1=(line.strip())
  str2=("| "+number+" | "+str1[:-10] + '| [mySoln](#'+number+'soln) [refSoln](#'+number+'ref) |'+str1[-10:-5]+' | '+str1[-4:]+'|\n')
  filehandle.write(str2)

filehandle.close()
## Writing to notes.md file; writng to a file
# FileHandle=open(PathToNotes,'a')
# number='1'
# problem='Remove Element'
# rate='48.6%'
# lvl='Easy'
# string='|'+(number)+'|'+(problem)+'| [mySoln](#'+number+'soln) [refSoln](#'+number+'ref) |'+rate+' | '+lvl+'|'
# FileHandle.write(string)
# FileHandle.write("\n")
#
# FileHandle.write('\n')
# FileHandle.close()
