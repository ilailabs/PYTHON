from moviepy.editor import *

clip = (VideoFileClip("1_iitm_cmm.mp4")
        #.subclip((1,22.65),(1,23.2))
        .resize(0.3))
clip.write_gif("use_your_head.gif")

