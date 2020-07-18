##Plots the disp of column;
Ovitopath="/home/elankovan/ovito-3.0.0-dev454-x86_64/bin/ovitos"

ly=10
lx=1000

##---gen disp plot and csv datafile---##
for ((ii = 1;ii<2;ii = ii+1))
{
folname="col" 
a=0+$ly*$ii
b=$ly+$ly*$ii
for ((i=$a;i<$b;i=i+1))
	{	
		
		$Ovitopath PlotDispCsv.py 'file.dump' $i
	}
mkdir $folname$ii
mv *.png $folname$ii
#mv *.csv $folname$ii
}

##---fft plot of all atoms in layer---##
#matlab -nodisplay -nosplash -nodesktop -r "run('csv2fft.m');exit;"

