## [How to create bicrystal?](http://atomsk.univ-lille1.fr/tutorial_grainboundaries.php)

for i in 30
do
python make_biDetails.py $i

rm BiCrystal.lmp
a=4.0
#atomsk --create fcc $a Al orient [-12-1] [-101] [111] al_single.lmp
#atomsk al_single.lmp -duplicate 40 40 1 supercell.lmp
atomsk --polycrystal al_single.lmp bidetail.txt BiCrystal.lmp
rm BiCrystal.dat BiCrystal_grains* BiCrystal_nodes* 

## slice the layer
Ovitopath="/home/elankovan/ovito-3.0.0-dev454-x86_64/bin/ovitos"
#$Ovitopath sliceLayer.py $i
done


