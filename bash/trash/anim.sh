#convert -delay 20 -loop 0 *.png phononWave.gif
#convert -resize 768x576 -delay 20 -loop 0 `ls -v` myimage.gif
convert -delay 40 -loop 0 `ls -v *.png` phononWave.gif
