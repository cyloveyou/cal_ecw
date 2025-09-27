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


def test_cal_ecw3():
    # 测试数据3
    wave = np.array([1, 2, 3, 4, 5, 6, 7, 8])
    srf = np.array([0, 0.2, 0.6, 0.7, 0.8, 0.5, 0.1, 0])
    plt.plot(wave, srf, marker="o")
    plt.title("Test Spectrum3")
    plt.xlabel("Wavelength")
    plt.ylabel("SRF")
    plt.ylim(0, 1)
    for i, w in enumerate(wave):
        # 绘制垂直线，0至y
        plt.vlines(w, 0, srf[i], colors="lightgray", linestyles="dashed", alpha=0.5)
    # 将第三块梯形区域填充为阴影
    plt.fill_between(wave[2:4], srf[2:4], color="lightgray", alpha=0.5)

    plt.tight_layout()
    # plt.show()
    plt.savefig("test_spectrum3.png", dpi=600)
    plt.close()


if __name__ == "__main__":
    # test_cal_ecw1()
    # test_cal_ecw2()
    test_cal_ecw3()
