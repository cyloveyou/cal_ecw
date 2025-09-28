# @Time    :2025/09/25 00:00:10
# @Author  :小 y 同 学
# @公众号   :小y只会写bug
# @CSDN    :https://blog.csdn.net/weixin_64989228?type=blog
# @File    :batch_cal.sh

# 列出所有srf文件
files=`ls ../srf_data/*.txt`

# # 筛选landsat系列
# files=`find ../srf_data -type f -name "*land*.txt"`

# GNU parallel并行
parallel --line-buffer ./build/main_ecw {} ::: $files

# # =====> 使用gmt进行出图 <=====
# parallel --line-buffer ./gmt_plot.sh {} ::: $files