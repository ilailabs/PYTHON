##create Unit cell

Ovitopath="/home/elankovan/ovito-3.0.0-dev454-x86_64/bin/ovitos"

for mAng in 16 24 32 34 40 48 56
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


