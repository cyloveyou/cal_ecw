# @Time    :2025/09/23 21:28:51
# @Author  :小 y 同 学
# @公众号   :小y只会写bug
# @CSDN    :https://blog.csdn.net/weixin_64989228?type=blog
# @File    :batch_cal.sh

# 列出所有srf文件
files=`find ../srf_data -type f -name "*.txt"`

# # 筛选landsat系列
# files=`find ../srf_data -type f -name "*land*.txt"`

# 使用GNU Parallel并行计算
parallel --line-buffer python main_ecw.py {} ::: $files
