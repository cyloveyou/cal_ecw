#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# @Time    :2025/09/24 21:30:53
# @Author  :小 y 同 学
# @公众号   :小y只会写bug
# @CSDN    :https://blog.csdn.net/weixin_64989228?type=blog ，获取srf数据下载链接并保存到文件
# @Discript: https://mp.weixin.qq.com/s/hidevomlZop9Ob2zlXyefQ
# https://nwp-saf.eumetsat.int/downloads/rtcoef_info/mw_flt/wsfmmwi-wsfm_1.flt
# https://nwp-saf.eumetsat.int/downloads/rtcoef_info/visir_srf/rtcoef_fy4_1_agri_srf.html
# https://nwp-saf.eumetsat.int/downloads/rtcoef_info/visir_srf/rtcoef_fy4_1_agri_srf/rtcoef_fy4_1_agri_srf.tar.gz

import requests
from bs4 import BeautifulSoup
import re
import os


def spiderhref(url, pattern=None, attrs={}):
    """爬虫获取url中的链接"""
    session = requests.Session()
    res = session.get(url)

    soup = BeautifulSoup(res.text, "lxml")
    if pattern is None:
        r = soup.find_all("a", attrs=attrs)
    else:
        r = soup.find_all("a", href=re.compile(pattern), attrs=attrs)
    urllist = []
    for name in r:
        href = name.get("href")
        urllist.append(href)

    return urllist


if __name__ == "__main__":
    url = "https://nwp-saf.eumetsat.int/site/software/rttov/download/coefficients/spectral-response-functions/"
    urllist = spiderhref(url, "srf.html")
    rooturl = r"https://nwp-saf.eumetsat.int/downloads/rtcoef_info/visir_srf"
    dlurllist = []
    # =====> 寻找下载链接 <=====
    for i, url in enumerate(urllist):
        filelist = spiderhref(url, "tar.gz")
        for item in filelist:
            tmp = os.path.join(rooturl, item)
            print(i, tmp)
            dlurllist.append(tmp)
    # =====> 保存所有下载链接 <=====
    with open("srf_download", "w") as f:
        for url in dlurllist:
            f.write(f"{url}\n")
    print("Done!")
