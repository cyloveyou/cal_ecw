#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# @Time    :2025/09/22 22:52:35
# @Author  :小 y 同 学
# @公众号   :小y只会写bug
# @CSDN    :https://blog.csdn.net/weixin_64989228?type=blog
# @Discript:
from lib_ecl import *
import sys


def main(file_path="srf_data/rtcoef_sentinel3_1_olci_srf_ch01.txt"):
    print("input_file:", file_path)
    title_head = file_path.split("/")[-1].split(".")[0]
    wave, srf_data = read_srf_file(file_path)

    ecl = cal_ecl(wave, srf_data)
    plot_spectrum(
        wave,
        srf_data,
        title=f"{title_head}",
        ecl=ecl,
        save_path=f"res/{title_head}.png",
    )


# =====>2025/09/22 21:04:20 主函数 <=====
if __name__ == "__main__":
    # =====>2025/09/23 21:18:07 输入参数 <=====
    if len(sys.argv) == 1:
        main()
    elif len(sys.argv) == 2:
        main(sys.argv[1])
    else:
        exit("参数错误！")
