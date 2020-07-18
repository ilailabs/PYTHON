Ovitopath="/home/elankovan/ovito-3.0.0-dev454-x86_64/bin/ovitos"
for dName in 16
do
mDir='2min_logfiles'
cd $dName
##get_datafiles
$Ovitopath ../export2Datafile.py
echo '******files_exported******'

##edit_mass
for i in $(ls min*.lmp)
do
echo $i
python ../editMass.py $i
done
echo '******mass_edited******'

##run_batch_min
for i in $(ls *.lmp)
do
echo 'energy min running' $i
lmp_daily -var ipfile $i -in ../batchMin.lammps
done

python ../readLogfiles.py
mkdir $mDir
mv *_logfile.txt $mDir
mv *.lmp $mDir
mv *.csv

cd ../
done
