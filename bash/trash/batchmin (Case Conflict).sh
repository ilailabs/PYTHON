for i in $(ls *.lmp)
do
echo $i
lmp_daily -var ipfile $i -in batchmin.lammps
done
