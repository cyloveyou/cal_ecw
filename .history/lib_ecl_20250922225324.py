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

# =====>2025/09/22 21:51:48 设置全局字体大小 <=====
# 标题
plt.rcParams["axes.titlesize"] = 16
# x轴标签
plt.rcParams["axes.labelsize"] = 14
# 刻度标签
plt.rcParams["xtick.labelsize"] = 12
plt.rcParams["ytick.labelsize"] = 12
# 图例
plt.rcParams["legend.fontsize"] = 12


# =====>2025/09/22 20:49:27 从xls文件中读取光谱响应函数 <=====
def read_spec_from_xls(file_path, sheet_name=0):
    df = pd.read_excel(file_path, sheet_name=sheet_name, header=1)
    freq = df.iloc[:, 0].values
    amp = df.iloc[:, 1].values
    return freq, amp


# =====>2025/09/22 20:49:08 绘制光谱响应函数图像 <=====
def plot_spectrum(
    freq, amp, title="Spectrum", ecl=None, lfreq=None, rfreq=None, save_path=None
):
    xlabel = "Wavelength (nm)"
    ylabel = "Amplitude"

    plt.figure(figsize=(8, 6))
    plt.plot(freq, amp)
    plt.title(title)
    plt.xlabel(xlabel)
    plt.ylabel(ylabel)
    plt.grid()

    if ecl:
        plt.axvline(x=ecl, color="r", linestyle="--", label=f"ecl: {ecl:.2f} nm")
        plt.legend()
    if lfreq:
        plt.axvline(x=lfreq, color="g", linestyle="-", label=f"LFreq: {lfreq:.2f} nm")
        plt.legend()
    if rfreq:
        plt.axvline(x=rfreq, color="b", linestyle="-", label=f"RFreq: {rfreq:.2f} nm")
        plt.legend()
    if save_path:
        plt.savefig(save_path, dpi=600, bbox_inches="tight")
    else:
        plt.show()


# =====>2025/09/22 21:06:15 计算等效中心频率 <=====
def cal_ecl(freq, amp):
    # 计算全部积分
    sum_amp = np.trapz(amp, x=freq)
    sum_amp_2 = sum_amp / 2

    # 二分法 迭代求解积分中点
    tmp_amp = -1
    lfreq = freq[0]
    rfreq = freq[-1]
    tmp_freq = (lfreq + rfreq) / 2
    while True:
        # 计算当前频率下的积分
        tmp_amp = np.trapz(amp[freq <= tmp_freq], x=freq[freq <= tmp_freq])

        # plot_spectrum(
        #     freq,
        #     amp,
        #     title="Spectrum",
        #     ecl=tmp_freq,
        #     lfreq=lfreq,
        #     rfreq=rfreq,
        #     save_path=f"pic/ecl_{tmp_freq:.2f}.png",
        # )
        # 判断是否达到目标积分
        if abs(tmp_amp - sum_amp_2) < 1:
            break
        # 如果当前积分小于目标积分，向右移动
        elif tmp_amp < sum_amp_2:
            lfreq = tmp_freq
            tmp_freq = (tmp_freq + rfreq) / 2
        # 否则向左移动
        else:
            rfreq = tmp_freq
            tmp_freq = (lfreq + tmp_freq) / 2

    # 求解积分中点
    ecl = tmp_freq
    print(f"等效中心频率: {ecl} amp")
    return ecl
