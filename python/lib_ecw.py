#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# @Time    :2025/09/22 20:36:15
# @Author  :小 y 同 学
# @公众号   :小y只会写bug
# @CSDN    :https://blog.csdn.net/weixin_64989228?type=blog
# @Discript:读取光谱响应函数，计算等效中心波长

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import matplotlib as mpl
import os
import re

# =====>2025/09/22 21:51:48 设置绘图属性 <=====
# 标题
mpl.rcParams["axes.titlesize"] = 20
# x轴标签
mpl.rcParams["axes.labelsize"] = 16
# 刻度标签
mpl.rcParams["xtick.labelsize"] = 14
mpl.rcParams["ytick.labelsize"] = 14
# 图例
mpl.rcParams["legend.fontsize"] = 14
# 支持中文
config = {
    "font.family": "serif",  # 设置衬线字体
    "font.serif": ["SimSun"],  # 设置中文字体,SimSun为宋体
    "mathtext.fontset": "stix",  # 设置数学字体，用作英文字体
    "axes.unicode_minus": False,
}
mpl.rcParams.update(config)


# =====>2025/09/22 20:49:27 从srf文件中读取光谱响应函数 <=====
def read_srf_file(file_path):
    data = np.loadtxt(file_path, skiprows=4)  # 跳过前4行
    wave = data[:, 0]
    wave_nm = 1 / wave * 1e7  # 将波长单位从 cm-1 转 nm
    srf_data = data[:, 1]
    return wave_nm, srf_data


# =====>2025/09/22 20:49:08 绘制光谱响应函数图像 <=====
def plot_spectrum(
    wave, srf, title="Spectrum", ecw=None, lwave=None, rwave=None, save_path=None
):
    xlabel = "Wavelength (nm)"
    ylabel = "srf"

    # =====> 绘图 <=====
    plt.figure(figsize=(8, 6))
    plt.plot(wave, srf)
    plt.title(title)
    plt.xlabel(xlabel)
    plt.ylabel(ylabel)
    plt.grid()

    # =====> 绘制竖线 <=====
    if ecw:
        plt.axvline(x=ecw, color="r", linestyle="--", label=f"ecw: {ecw:.2f} nm")
    if lwave:
        plt.axvline(x=lwave, color="g", linestyle="-", label=f"Lwave: {lwave:.2f} nm")
    if rwave:
        plt.axvline(x=rwave, color="b", linestyle="-", label=f"Rwave: {rwave:.2f} nm")
    plt.legend(loc="upper right")

    # =====> 保存图片 <=====
    if save_path:
        if not os.path.exists(os.path.dirname(save_path)):
            os.makedirs(os.path.dirname(save_path))
        plt.savefig(save_path, dpi=600, bbox_inches="tight")
    else:
        plt.show()
    plt.close()


# =====>2025/09/22 21:06:15 计算等效中心频率 <=====
def cal_ecw(wave, srf):
    # 计算全部积分 面积
    sum_srf = np.trapz(srf, x=wave)
    sum_srf_2 = sum_srf / 2

    # 二分法 迭代求解积分中点
    tmp_srf = -1
    lwave = wave[0]
    rwave = wave[-1]
    tmp_wave = (lwave + rwave) / 2
    while True:
        # 计算当前频率下的积分
        tmp_srf = np.trapz(srf[wave <= tmp_wave], x=wave[wave <= tmp_wave])

        # ******************************
        # print("tmp_wave:", tmp_wave, " tmp_srf:", tmp_srf, " sum_srf_2:", sum_srf_2)
        # plot_spectrum(
        #     wave,
        #     srf,
        #     title="Spectrum",
        #     ecw=tmp_wave,
        #     lwave=lwave,
        #     rwave=rwave,
        #     # save_path=f"pic/ecw_{tmp_wave:.2f}.png",
        # )
        # ******************************

        # 判断是否达到目标积分
        if abs(rwave - lwave) < 1e-6:
            break
        # 如果当前积分小于目标积分，向右移动
        elif tmp_srf < sum_srf_2:
            lwave = tmp_wave
        # 否则向左移动
        else:
            rwave = tmp_wave
        tmp_wave = (lwave + rwave) / 2

    return tmp_wave
