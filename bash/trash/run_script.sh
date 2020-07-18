#Please modify the number 395 to whatever is the total number of ids you have
# This script runs the lammps input.in file for every data file in the coordinates directory.
sno=(16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31)
#sno=(13)
for jj in ${!sno[@]}
do 
echo "EXPERIMENT NO ${sno[jj]}"
fno=${sno[jj]}

mkdir dump_${fno}
mkdir log_${fno}
for ((i=0; i<=395; i++))
do
    echo $i
    shift="$i"
    coords_file=coordinatefile_$i.lammps
    energy_file=energy
    input_file=input.in
    logfile=log_${fno}/logfile_$i.log
    echo $coords_file
    # The file below uses 3 cores to relax the sample, you may be able to use more to speed up. When you are testing make sure, you try it on one sample. That is for say i = 0. So that you know how it works.
#    mpirun -n 3 lmp -var coords $coords_file -var shift $shift -var file Energy -i input.in -l $logfile
    lmp_daily -var fno ${fno} -var coords coordinatefiles_${fno}/$coords_file -var shift $shift -var file energy -i input.in -l $logfile
#    cat energy_${fno}/energy_$shift.txt >> energy_all_${fno}.txt
done
done

