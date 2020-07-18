#Ovitopath="/home/elankovan/ovito-3.0.0-dev454-x86_64/bin/ovitos"
#$Ovitopath export2Datafile.py

for i in {0..89}
do 
python editMass.py min$i.lmp
done
