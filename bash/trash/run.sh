#matlab -nodisplay -nosplash -nodesktop -r "run('makelmp_samek.m');exit;"

#lmp_daily -in gpulse.lammps

Ovitopath="/home/elankovan/Packages/ovito-3.0.0-dev372-x86_64/bin/ovitos"
#$Ovitopath --nthreads 4 makegif.py

##---gen disp plot and csv datafile---##
for ((ii = 0;ii<40;ii = ii+1))
{
folname="col" 
a=0+40*$ii
b=40+40*$ii
for ((i=$a;i<$b;i=i+1))
	{	
		
		$Ovitopath PlotDispCsv.py 'file.dump' $i
	}
mkdir $folname$ii
mv *.png $folname$ii
mv *.csv $folname$ii
}

##---fft plot of all atoms in layer---##
matlab -nodisplay -nosplash -nodesktop -r "run('csv2fft.m');exit;"

