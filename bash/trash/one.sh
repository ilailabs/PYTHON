Ovitopath="/home/elankovan/ovito-3.0.0-dev454-x86_64/bin/ovitos"

for ((ii = 0;ii<34;ii = ii+1))
{
$Ovitopath PlotDisp.py 'file.dump' $ii
}
