# this will make your .md file and convert to html
# paste your lmp file here and run this script -->folder containing images and md document
dumpfolder="lammps_dump"
lmpfolder="files_lmp"
ovitofolder="Ovito"
mkdir $ovitofolder
cd $dumpfolder

#fnames=(*.lmp)
fnames='dump.*'
for i in ${fnames[*]};
	do
#this will truncate the file extensions
	# runfile=${i%.*} #from backend
	runfolder=${i##dump.} #matching from the front end
	echo item: $runfolder
	mkdir $runfolder
		/home/elankovan/Packages/ovito/bin/ovitos /home/elankovan/Packages/ovito/bin/MyPythonModifiers/exportfile.py ${i}
	mv *.lmp $runfolder
	mv $runfolder ../$ovitofolder
	cd ..
	runfile=${runfolder%_min} #from backend
	cp $lmpfolder/$runfile.lmp $ovitofolder/$runfolder
	cp /home/elankovan/Packages/ovito/bin/MyPythonModifiers/template.md  $ovitofolder/$runfolder
	cp /home/elankovan/Packages/ovito/bin/MyPythonModifiers/writemd.py  $ovitofolder/$runfolder
	cd $ovitofolder/$runfolder
	files=(*.lmp)
		for j in ${files[*]};
		do
	/home/elankovan/Packages/ovito/bin/ovitos /home/elankovan/Packages/ovito/bin/MyPythonModifiers/rendergbp.py ${j}
		done
		convert -delay 100 -loop 1 dump*_left.png dump.gif
		convert -delay 100 -loop 1 dump*_gbp.png plane.gif
		python writemd.py
		pandoc template.md -f markdown -t html -s -o $runfolder.html
		cd ../../$dumpfolder
done
