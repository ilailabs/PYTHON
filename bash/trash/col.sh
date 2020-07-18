#matlab -nodisplay -nosplash -nodesktop -r "run('makelmp_samek.m');exit;"

#lmp_daily -in gpulse.lammps

Ovitopath="/home/elankovan/ovito-3.0.0-dev454-x86_64/bin/ovitos"
#$Ovitopath --nthreads 4 makegif.py

for ((ii = 1;ii<2;ii = ii+1))
{
folname="col" 
a=0+40*$ii
b=40+40*$ii
for ((i=$a;i<$b;i=i+1))
	{	
		
		$Ovitopath PlotDisp.py 'file.dump' $i
	}
mkdir $folname$ii
mv *.png $folname$ii
}



