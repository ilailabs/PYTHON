Ovitopath="/home/elankovan/ovito-3.0.0-dev454-x86_64/bin/ovitos"

for i in           16          85         155         225         295         365         435         505         575         645         715         785          855         925         995        1065        1135        1205        1275        1345

do		echo $i
		$Ovitopath PlotDisp.py 'file.dump' $i
		
done



