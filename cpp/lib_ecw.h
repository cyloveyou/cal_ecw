/**
 * @Time    :2025/09/24 23:55:10
 * @Author  :小 y 同 学
 * @公众号   :小y只会写bug
 * @CSDN    :https://blog.csdn.net/weixin_64989228?type=blog
 */
#include <fstream>
#include <sstream>
#include <iostream>
#include <string>
#include <vector>

//梯形积分
double trapz(std::vector<double> y, std::vector<double> x);

//读取srf数据
void read_srf_data(std::string filepath, std::vector<double> &wave, std::vector<double> &srf);

//计算ecw
double cal_ecw(std::vector<double> &wave, std::vector<double> &srf);