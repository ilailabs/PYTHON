fileloc=$(pwd)
cd ~/Pictures

## Renameing files ' ' with '_';
for f in *\ *; do mv "$f" "${f// /_}"; done

## If the main folder doesn't exists, let's create;
if [ ! -d "$fileloc/main" ]; then
	echo Creating main folder...
	mkdir $fileloc/main
fi

## Calling Python script to write notes.md
python /home/elankovan/Dropbox/z_Archive/writenotes.py $fileloc

#moving all the *.png files to main folder.
fnames=(*.png)
for i in ${fnames[*]};
	do
	runfile=${i%.png}
	echo moved: $i
	mv $i $fileloc/main
done
