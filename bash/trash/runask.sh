cd ../files_cfg
fnames=(*.cfg)

for i in ${fnames[*]};
	do
	runfile=${i%.*}
	echo item: $i
		atomsk $i $runfile.lmp
done
mkdir ../files_lmp
mv *.lmp ../files_lmp
echo BASH RUN SUCCESSFUL 


