file=`ls ../../srf_data/*.txt`
parallel --line-buffer ./main_ecl {} ::: $files