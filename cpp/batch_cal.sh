files=`ls ../srf_data/*.txt`
# GNU parallel并行
parallel --line-buffer ./build/main_ecl {} ::: $files