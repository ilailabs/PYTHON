for i in `seq 5 5 30`
do 
sigma=9
gb_plane=(1 -1 4)
size=(5 5 $i)

axis=(1 1 0)
###	get m,n from csl func 	###
##./csl.py ${axis[0]}${axis[1]}${axis[2]} $sigma 
###for 221 plane-> can be identified from angle only; set def or read ip
##read m n
m=4
n=1

filename=s${sigma}_mn$m$n\_${gb_plane[0]}${gb_plane[1]}${gb_plane[2]}_sz${size[0]}${size[1]}${size[2]}

./bicrystal.py ${axis[0]},${axis[1]},${axis[2]} ${gb_plane[0]},${gb_plane[1]},${gb_plane[2]} $m,$n ${size[0]} ${size[1]} ${size[2]} lattice:cu $filename.cfg

mv *.cfg ../files_cfg
done

