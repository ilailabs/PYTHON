a=4.05

#rm *.xsf al_single.lmp *.dat BiCrystal.lmp
## [How to create bicrystal?](http://atomsk.univ-lille1.fr/tutorial_grainboundaries.php)

#atomsk --create fcc 4.046 Al al_single.lmp
#atomsk --create fcc 3.597 Cu orient [110] [-110] [001] Cu.cfg
atomsk --create fcc $a Al orient [-12-1] [-101] [111] al.lmp

#atomsk --create diamond 5.431 Si lmp
atomsk --polycrystal al.lmp bidetail.txt BiCrystal.lmp



