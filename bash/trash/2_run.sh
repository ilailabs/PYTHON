for i in $(ls *.lmp)
do
echo 'energy min running' $i
lmp_daily -var ipfile $i -in batchMin.lammps
done
