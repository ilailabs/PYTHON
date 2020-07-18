##Plots the disp of column;
Ovitopath="/home/elankovan/ovito-3.0.0-dev454-x86_64/bin/ovitos"

ly=10
lx=1000
Wc=4

for ((ii = 4;ii<10000;ii = ii+$ly))
{
$Ovitopath PlotDispCsv.py 'file.dump' $ii

}

