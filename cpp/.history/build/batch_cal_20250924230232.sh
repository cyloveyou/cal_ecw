file=`ls ../../srf_data/*.txt`
for f in $file
do 
echo $file
done
parallel --line-buffer ./main_ecl {} ::: $files