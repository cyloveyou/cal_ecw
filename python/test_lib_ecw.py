#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# @Time    :2025/09/22 22:50:21
# @Author  :小 y 同 学
# @公众号   :小y只会写bug
# @CSDN    :https://blog.csdn.net/weixin_64989228?type=blog
# @Discript:

from lib_ecw import *
import numpy as np


def test_cal_ecw1():
    # 测试数据1
    wave = np.array([1, 2, 3, 4, 5])
    srf = np.array([0, 1, 0, 1, 0])
    ecw = cal_ecw(wave, srf)
    plot_spectrum(wave, srf, title="Test Spectrum1", ecw=ecw)


def test_cal_ecw2():
    # 测试数据2
    wave = np.array([1, 2, 3, 4, 5])
    srf = np.array([0, 1, 1, 1, 0])
    ecw = cal_ecw(wave, srf)
    plot_spectrum(wave, srf, title="Test Spectrum2", ecw=ecw)


if __name__ == "__main__":
    test_cal_ecw1()
    test_cal_ecw2()
