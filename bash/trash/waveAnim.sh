fName='new_wave'
Ovitopath="/home/elankovan/ovito-3.0.0-dev454-x86_64/bin/ovitos"
$Ovitopath waveAnim.py 'w_file_pGrp.dump' 'wo_file_pGrp.dump'
mkdir $fName
mv *.png *.csv $fName

