# @Time    :2025/09/23 21:28:51
# @Author  :小 y 同 学
# @公众号   :小y只会写bug
# @CSDN    :https://blog.csdn.net/weixin_64989228?type=blog
# @File    :batch_cal.sh

files=`find ../srf_data -type f -name "*.xls" -o -name "*.xlsx" -not -name ".*"`
parallel --keep-order --halt never -j 4 python main_ecl.py ::: $files

# for file in "${files[@]}"; do
#     echo "$file"
#     # 其他处理
# done
