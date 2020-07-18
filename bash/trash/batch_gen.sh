sno=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31)
sig=(29 325 5 865 53 17 13 37 65 145 325 401 265 667 901 1601 97 593 5 185 53 17 13 37 25 41 61 85 113 181 365)
m=(5 17 3 28 7 4 5 6 8 12 18 20 23 26 30 40 9 31 2 17 9 5 3 7 4 5 6 7 8 10 14)
n=(2 6 1 9 2 1 1 1 1 1 1 1 1 1 1 1 4 15 1 9 5 3 2 5 3 4 5 6 7 9 13)

size=(3 3 4)

axis=(0 0 1)

mkdir ../str-sw
for i in ${!m[@]};
do
filename="${sno[$i]}_data_${sig[$i]}_${m[$i]}${n[$i]}0"
gb_plane=(${m[$i]} ${n[$i]} 0)
## ./bicrystal.py 1,1,0 2,-2,1 1,2 5 5 10 lattice:cu 6s9_mn12_2-21_sz5510.cfg
./bicrystal.py ${axis[0]},${axis[1]},${axis[2]} ${gb_plane[0]},${gb_plane[1]},${gb_plane[2]} ${m[$i]},${n[$i]} ${size[0]} ${size[1]} ${size[2]} lattice:si "$filename".lammps
echo "$filename"

mv *.lammps ../str-sw

done


