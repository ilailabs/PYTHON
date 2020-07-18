##L2 is Name of your folder;
Notes_location='/home/elankovan/Documents/C55_1dphonon/notes.md'
# Pics_location='/'

## Renameing files ' ' with '_';
for f in *\ *; do mv "$f" "${f// /_}"; done

## If the folder doesn't exists, let's create;
if [ ! -d "$location" ]; then
	echo Creating new folder: $location
	mkdir $location
	mkdir $location/main
	touch $location/notes.md
fi

## Calling Python to write notes.md
python /home/elankovan/Dropbox/archive/writenotes.py $Notes_location

#getting all the png files and moving to main folder.
fnames=(*.png)
for i in ${fnames[*]};
	do
	runfile=${i%.png}
	echo moved: $i
	mv $i $location/main
done
