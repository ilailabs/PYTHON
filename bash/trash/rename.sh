location='DeepLearning/main'
PathToNotes="DeepLearning/notes.md"
##renameing ' ' with '_'
for f in *\ *; do mv "$f" "${f// /_}"; done

##Calling Python to write notes.md
python writenotes.py
#getting all the png files and moving to main folder.
fnames=(*.png)
for i in ${fnames[*]};
	do
	runfile=${i%.png}
	echo item: $i
	mv $i $location
done
