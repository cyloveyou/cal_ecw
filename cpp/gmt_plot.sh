# @Time    :2025/09/27 21:34:38
# @Author  :小 y 同 学
# @公众号   :小y只会写bug
# @CSDN    :https://blog.csdn.net/weixin_64989228?type=blog
# @File    :gmt_plot.sh 使用gmt可视化绘图
if [ $# -eq 1 ]; then
  infile=$1
else
  infile="../srf_data/rtcoef_landsat_8_oli_srf_ch02.txt"
fi

mapfile="$(basename $infile .txt)"

# =====> 预处理数据 <=====
tail -n +5 $infile | awk '{print (1/$1)*1e7, $2}'>${mapfile}_data.tmp
# 获取当前图的范围
region=$(gmt info -I- ${mapfile}_data.tmp)

# 提取y轴范围
ymin=$(echo $region | cut -d'/' -f3 | sed 's/R//')
ymax=$(echo $region | cut -d'/' -f4)
# =====> 计算ecw <=====
cppres=$(./build/main_ecw $infile)
ecw=$(echo $cppres | awk '{print $3}')

# =====> gmt绘图 <=====
gmt begin gmt_res/$mapfile png A+m0.2c,E720

# =====> 设置基础参数 <=====
# 设置标注字体
gmt set FONT_ANNOT_PRIMARY 18p,Times-Roman,black
gmt set MAP_LABEL_OFFSET 8p
# 设置轴标签字体
gmt set FONT_LABEL 20p,Times-Roman,black
gmt set MAP_TICK_LENGTH 4p
gmt set MAP_ANNOT_OFFSET 3p
gmt set MAP_FRAME_PEN 0.75p,black
# 设置标题字体
gmt set FONT_TITLE 22p,Times-Roman,black

gmt basemap $region -JX15c/9c -Bxag+l"wavelength (nm)" -Byag+l"relative response" \
    -BWSne+t"$mapfile"-BWSrt
gmt plot ${mapfile}_data.tmp -W1.5p,blue

# 绘制竖线
echo "$ecw $ymin" > ${mapfile}_line.tmp
echo "$ecw $ymax" >> ${mapfile}_line.tmp
gmt plot ${mapfile}_line.tmp -W1p,red,--

# 在图的中间位置添加文本标签
lcx=$ecw
lcy=$(echo "$ymax / 4.0" | bc -l)
echo "$lcx $lcy x=$ecw" | gmt text -F+jBL -Gwhite -W0.5p

# 清理临时文件
rm -f ${mapfile}_data.tmp ${mapfile}_line.tmp

gmt end 