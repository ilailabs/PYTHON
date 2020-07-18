Ovitopath="/home/elankovan/ovito-3.0.0-dev454-x86_64/bin/ovitos"
a=4.823
atomsk --create fcc $a Al orient [-12-1] [-101] [111] al.lmp
atomsk al.lmp -duplicate 100 10 1 BiCrystal.lmp
#atomsk --polycrystal al.lmp bidetail.txt BiCrystal.lmp
#$Ovitopath sliceLayer.py
#lmp_daily -in try.in
#rm al.lmp BiCrystal.dat BiCrystal.lmp BiCrystal_grains-com.xsf BiCrystal_nodes.xsf


