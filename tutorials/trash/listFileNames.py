from os import listdir
from os.path import isfile, join
mypath="/home/elankovan/Dropbox/Elan/Profile/SlideShow/movies"
onlyfiles = [f for f in listdir(mypath) if isfile(join(mypath, f))]
print(onlyfiles)

import csv

with open("fileop.txt", 'wb') as myfile:
    wr = csv.writer(myfile, quoting=csv.QUOTE_ALL)
    wr.writerow(onlyfiles)

#from moviepy.editor import VideoFileClip
#clip = VideoFileClip("1_iitm_cmm.mp4")
#print( clip.duration )
