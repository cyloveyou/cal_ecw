# @Time    :2025/09/23 21:28:51
# @Author  :小 y 同 学
# @公众号   :小y只会写bug
# @CSDN    :https://blog.csdn.net/weixin_64989228?type=blog
# @File    :batch_cal.sh

xlsfile=`find ../srf_data -type f -name "*.xls"`
xlsxfile=`find ../srf_data -type f -name "*.xlsx"`
files="$xlsfile $xlsxfile"
for file in $files
do
    echo "Processing file: $file"
done