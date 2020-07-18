cd files_lmp
fnames=(*.lmp)

for i in ${fnames[*]};
	do
#this will truncate the file extensions
	runfile=${i%.*}
	echo item: $runfile
done
