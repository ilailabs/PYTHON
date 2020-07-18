Ovitopath="/home/elankovan/ovito-3.0.0-dev454-x86_64/bin/ovitos"


for ((i=352;i<8000;i=i+200))
{
$Ovitopath PlotDispCsv.py 'file.dump' $i
}


