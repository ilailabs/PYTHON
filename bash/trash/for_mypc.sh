Ovitopath="/home/elankovan/ovito-3.0.0-dev454-x86_64/bin/ovitos"
Pyfile="/home/elankovan/ovito-3.0.0-dev454-x86_64/PosDisp.py"

for i in {1..25}
do
mkdir $i"_amp"
cd $i"_amp"
lmp_daily -var Ai $i -in ../onedimal.lammps
$Ovitopath --nthreads 4 $Pyfile $i"_file.dump"
cd ..
done
