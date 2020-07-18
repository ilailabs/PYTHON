Ovitopath="/home/elankovan/ovito-3.0.0-dev454-x86_64/bin/ovitos"

mDir='1min_files'
mkdir $mDir
$Ovitopath export2Datafile.py

for i in $(ls min*.lmp)
do
echo $i
python editMass.py $i
done

mv min*.lmp $mDir
