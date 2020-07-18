notes_loc=$(pwd)
file_loc=week1

## Renameing files ' ' with '_';
for f in *\ *; do mv "$f" "${f// /_}"; done

## If the main folder doesn't exists, let's create;
if [ ! -d "$notes_loc/main" ]; then
	echo Creating main folder...
	mkdir $notes_loc/main
fi

## Calling Python script to write notes.md
python /home/elankovan/Dropbox/archive/WriteMp4ToNotes.py $notes_loc

#moving all the *.png files to main folder.
fnames=(*.mp4)
for i in ${fnames[*]};
	do
	runfile=${i%.mp4}
	echo moved: $i
	mv $i $notes_loc/main
done
