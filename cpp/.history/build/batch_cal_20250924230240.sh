files=`ls ../../srf_data/*.txt`
for f in $files
do 
echo $f
done
parallel --line-buffer ./main_ecl {} ::: $files