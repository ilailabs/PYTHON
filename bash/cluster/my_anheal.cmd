for i in $(ls *.lmp)
do
lmp_daily -var filename $i -in anheal.lammps
done

