exp=1
sigma=5
m=3
n=1
gb_plane=(3 1 0)

size=(5 5 5)

axis=(0 0 1)
###	get m,n from csl func 	###
./csl.py ${axis[0]}${axis[1]}${axis[2]} $sigma 
###for 221 plane-> can be identified from angle only; set def or read ip
###read m n

filename=${exp}s${sigma}_mn$m$n\_${gb_plane[0]}${gb_plane[1]}${gb_plane[2]}_sz${size[0]}${size[1]}${size[2]}

### ./bicrystal.py 1,1,0 2,-2,1 1,2 5 5 10 lattice:cu 6s9_mn12_2-21_sz5510.cfg
./bicrystal.py ${axis[0]},${axis[1]},${axis[2]} ${gb_plane[0]},${gb_plane[1]},${gb_plane[2]} $m,$n ${size[0]} ${size[1]} ${size[2]} lattice:si filename.cfg


#mkdir ../files_cfg
#mv *.cfg ../files_cfg


