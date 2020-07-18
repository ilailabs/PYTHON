#Please modify the number 395 to whatever is the total number of ids you have
# This script runs the lammps input.in file for every data file in the coordinates directory.
sno=(6 8 17 26)
fileNo=(203 323 313 280)

for jj in ${!sno[@]}
do 
echo "EXPERIMENT NO ${sno[jj]}"
fno=${sno[jj]}
minfileno=${fileNo[jj]}

mkdir anneal_${fno}
i=${minfileno}
echo $i
shift="$i"
coords_file=coordinatefile_$i.lammps
energy_file=energy
input_file=input.in
logfile=log_${fno}/logfile_$i.log
echo $coords_file
# The file below uses 3 cores to relax the sample, you may be able to use more to speed up. When you are testing make sure, you try it on one sample. That is for say i = 0. So that you know how it works.
#    mpirun -n 3 lmp -var coords $coords_file -var shift $shift -var file Energy -i input.in -l $logfile
lmp_daily -var fno ${fno} -var coords ../datafiles/coordinatefiles_${fno}/$coords_file -var shift $shift -var file energy -i annealing.in -l $logfile
#    cat energy_${fno}/energy_$shift.txt >> energy_all_${fno}.txt
done
done

