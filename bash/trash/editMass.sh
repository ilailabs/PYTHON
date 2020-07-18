for i in $(ls *.lmp)
do
echo $i
python editMass.py $i
done
