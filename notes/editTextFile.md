## Working With Text Files

**Edit a particular line of a text file**


[:file_folder:](../../ms-res/editMass.py)
```python
import sys
fname1=sys.argv[1]
print(fname1)
with open(fname1,'r') as file:
    data = file.readlines()

data[9]='           1   28.08500000    # Si\n'

with open(fname1,'w') as file:
    file.writelines(data)
```