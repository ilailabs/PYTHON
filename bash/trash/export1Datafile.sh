ovitoPath="/home/elankovan/ovito-3.0.0-dev454-x86_64/bin/ovitos"
$ovitoPath export1Datafile.py
for i in $(ls min*.lmp)
do
echo $i
python editMass.py $i
done
