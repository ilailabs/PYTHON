## [How to create bicrystal?](http://atomsk.univ-lille1.fr/tutorial_grainboundaries.php)

a=5

atomsk --create fcc $a Al orient [-12-1] [-101] [111] al_single.lmp
atomsk al_single.lmp -duplicate 40 40 1 supercell.lmp

#atomsk --polycrystal al_single.lmp bidetail.txt BiCrystal.lmp

#rm al_single.lmp BiCrystal.dat BiCrystal_grains* BiCrystal_nodes* 

#2sliceLayer.sh
