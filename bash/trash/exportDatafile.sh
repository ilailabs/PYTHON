ovito=/home/elankovan/ovito-3.0.0-dev454-x86_64/bin/ovitos
$ovito exportDatafile.py

for i in $(ls *.lmp)
do
echo $i
python editMass.py $i
#lmp_daily -var ipfile $i -in batchmin.lammps
done
