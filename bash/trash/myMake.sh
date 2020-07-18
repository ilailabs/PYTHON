#lmp_daily -in gpulse.lammps
fName="nei"
Ovitopath="/home/elankovan/ovito-3.0.0-dev454-x86_64/bin/ovitos"

$Ovitopath myMake.py 'file.dump' $fName.lmp

mkdir $fName
mv *.png $fName
