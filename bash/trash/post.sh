Ovitopath="/home/elankovan/Packages/ovito-3.0.0-dev372-x86_64/bin/ovitos"

for ((ii = 0;ii<1;ii = ii+1))
{
folname="col" 
a=0+40*$ii
b=40+40*$ii
for ((i=$a;i<$b;i=i+1))
	{	
		
		$Ovitopath PlotKeCsv.py 'file.dump' $i
	}
mkdir $folname$ii
mv *.png $folname$ii
mv *.csv $folname$ii
}
