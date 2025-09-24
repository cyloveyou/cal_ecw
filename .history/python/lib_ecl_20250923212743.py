#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# @Time    :2025/09/22 20:36:15
# @Author  :小 y 同 学
# @公众号   :小y只会写bug
# @CSDN    :https://blog.csdn.net/weixin_64989228?type=blog
# @Discript:读取光谱响应函数，计算等效中心波长

import numpy as np
import pandas as pd
from matplotlib import pyplot as plt
import os

# =====>2025/09/22 21:51:48 设置全局字体大小 <=====
# 标题
plt.rcParams["axes.titlesize"] = 20
# x轴标签
plt.rcParams["axes.labelsize"] = 16
# 刻度标签
plt.rcParams["xtick.labelsize"] = 14
plt.rcParams["ytick.labelsize"] = 14
# 图例
plt.rcParams["legend.fontsize"] = 14
# 支持中文
config = {
    "font.family": "serif",  # 设置衬线字体
    "font.serif": ["SimSun"],  # 设置中文字体,SimSun为宋体
    "mathtext.fontset": "stix",  # 设置数学字体，用作英文字体
    "axes.unicode_minus": False,
}
plt.rcParams.update(config)


# =====>2025/09/22 20:49:27 从xls文件中读取光谱响应函数 <=====
def read_spec_from_xls(file_path, sheet_name=0):
    df = pd.read_excel(file_path, sheet_name=sheet_name, header=1)
    df = df.fillna(0)
    wave = df.iloc[:, 0].values
    amp = df.iloc[:, 1:].values
    return wave, amp, df.columns[1:]


# =====>2025/09/22 20:49:08 绘制光谱响应函数图像 <=====
def plot_spectrum(
    wave, amp, title="Spectrum", ecl=None, lwave=None, rwave=None, save_path=None
):
    xlabel = "Wavelength (nm)"
    ylabel = "srf"

    plt.figure(figsize=(8, 6))
    plt.plot(wave, amp)
    plt.title(title)
    plt.xlabel(xlabel)
    plt.ylabel(ylabel)
    plt.grid()

    if ecl:
        plt.axvline(x=ecl, color="r", linestyle="--", label=f"ecl: {ecl:.2f} nm")
        plt.legend()
    if lwave:
        plt.axvline(x=lwave, color="g", linestyle="-", label=f"Lwave: {lwave:.2f} nm")
        plt.legend()
    if rwave:
        plt.axvline(x=rwave, color="b", linestyle="-", label=f"Rwave: {rwave:.2f} nm")
        plt.legend()
    if save_path:
        if not os.path.exists(os.path.dirname(save_path)):
            os.makedirs(os.path.dirname(save_path))
        plt.savefig(save_path, dpi=600, bbox_inches="tight")
    else:
        plt.show()


# =====>2025/09/22 21:06:15 计算等效中心频率 <=====
def cal_ecl(wave, amp):
    # 计算全部积分
    sum_amp = np.trapz(amp, x=wave)
    sum_amp_2 = sum_amp / 2

    # 二分法 迭代求解积分中点
    tmp_amp = -1
    lwave = wave[0]
    rwave = wave[-1]
    tmp_wave = (lwave + rwave) / 2
    while True:
        # 计算当前频率下的积分
        tmp_amp = np.trapz(amp[wave <= tmp_wave], x=wave[wave <= tmp_wave])

        print(
            "tmp_wave:",
            tmp_wave,
            " tmp_amp:",
            tmp_amp,
            " sum_amp_2:",
            sum_amp_2,
            "abs",
            abs(tmp_amp - sum_amp_2),
        )
        # plot_spectrum(
        #     wave,
        #     amp,
        #     title="Spectrum",
        #     ecl=tmp_wave,
        #     lwave=lwave,
        #     rwave=rwave,
        #     save_path=f"pic/ecl_{tmp_wave:.2f}.png",
        # )

        # 判断是否达到目标积分
        if abs(tmp_amp - sum_amp_2) < 1e-6:
            break
        # 如果当前积分小于目标积分，向右移动
        elif tmp_amp < sum_amp_2:
            lwave = tmp_wave
            tmp_wave = (tmp_wave + rwave) / 2
        # 否则向左移动
        else:
            rwave = tmp_wave
            tmp_wave = (lwave + tmp_wave) / 2

    return tmp_wave
