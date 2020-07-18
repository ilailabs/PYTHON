"""
Converts speech into text using google *speach2text* api; used to convert my notes
"""

import speech_recognition as sr

audiofile=("afile.wav")
## use the audio file as source only in .wav

r= sr.Recognizer() #intialise the recognition

with sr.AudioFile(audiofile) as source:
    audio=r.record(source)
## reads the audio file

## exception handling
try :
    print ("audio file contains"+r.recognize_google(audio))
except sr.UnknownValueError :
    print("google can't read it")
except sr.RequestError :
    print("can't connect to api")

