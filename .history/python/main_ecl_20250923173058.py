#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# @Time    :2025/09/22 22:52:35
# @Author  :小 y 同 学
# @公众号   :小y只会写bug
# @CSDN    :https://blog.csdn.net/weixin_64989228?type=blog
# @Discript:
from lib_ecl import *


def main(file_path="../srf_data/光谱响应函数20240410/GF1/GF-1 PMS.xls"):
    freq, amp = read_spec_from_xls(file_path)
    ecl = cal_ecl(freq, amp)
    plot_spectrum(freq, amp, title="GF-1 PMS Spectrum", ecl=ecl)


# =====>2025/09/22 21:04:20 主函数 <=====
if __name__ == "__main__":
    main()
