
#converting cfg to lmp using atomsk and mv
cd files_cfg
files=(*.cfg)

for i in ${files[*]};
	do
	echo item: $i
	fil=${i%.*}
	atomsk $i $fil.lmp
done

mv *.lmp ../
cd ..
mkdir files_lmp
mv *.lmp files_lmp

