#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# @Time    :2025/09/22 22:50:21
# @Author  :小 y 同 学
# @公众号   :小y只会写bug
# @CSDN    :https://blog.csdn.net/weixin_64989228?type=blog
# @Discript:

from lib_ecl import *
import numpy as np


def test_cal_ecl1():
    # 测试数据1
    freq = np.array([1, 2, 3, 4, 5])
    amp = np.array([0, 1, 0, 1, 0])
    ecl = cal_ecl(freq, amp)
    plot_spectrum(freq, amp, title="Test Spectrum1", ecl=ecl)


def test_cal_ecl2():
    # 测试数据2
    freq = np.array([1, 2, 3, 4, 5])
    amp = np.array([1, 1, 1, 1, 1])
    ecl = cal_ecl(freq, amp)
    plot_spectrum(freq, amp, title="Test Spectrum2", ecl=ecl)


if __name__ == "__main__":
    test_cal_ecl1()
    test_cal_ecl2()
