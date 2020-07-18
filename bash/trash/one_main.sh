##create Unit cell
a=4.0
atomsk --create fcc $a Al orient [-12-1] [-101] [111] al_111.lmp

Ovitopath="/home/elankovan/ovito-3.0.0-dev454-x86_64/bin/ovitos"

for mAng in 16 24 34 42 44
do
mkdir $mAng
cd $mAng
python ../make_biDetails.py $mAng
atomsk --polycrystal ../al_111.lmp biDetails.txt biCrystal.lmp
rm biCrystal.dat biCrystal_*
$Ovitopath ../sliceLayer.py
python ../rename.py

##anhealing in lammps
#lmp_daily -in ../quench.lammps
cd ..
done


