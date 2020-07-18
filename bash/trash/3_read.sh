for dName in 30
do
mDir='1min_logfiles'
cd $dName
python ../readLogfiles.py
mkdir $mDir
mv *_logfile.txt $mDir
mv *.lmp $mDir
mv *.csv

cd ../
done
