for i in {1..27}
do
   echo "file $i"
python dump2lmp.py stable-str-$i.txt
done

mkdir lmpfiles
mv *.lmp lmpfiles
