/**
 * @Time    :2025/09/24 23:55:26
 * @Author  :小 y 同 学
 * @公众号   :小y只会写bug
 * @CSDN    :https://blog.csdn.net/weixin_64989228?type=blog
 */

#include "lib_ecw.h"

/**
 * 梯形积分，注意x和y的位置
 */
double trapz(std::vector<double> y, std::vector<double> x)
{
    double sum_area = 0.0; //初始面积为0
    for (size_t i = 1; i < y.size(); ++i)
    {
        //计算梯形面积并累加
        sum_area += 0.5 * (y[i] + y[i - 1]) * (x[i] - x[i - 1]);
    }
    return sum_area;
}

/**
 * 读取srf数据，返回wave：单位nm，srf：0-1之间
 */
void read_srf_data(std::string filepath, std::vector<double> &wave, std::vector<double> &srf)
{
    std::ifstream infile(filepath);
    std::string line;
    double w, s;
    // =====> 忽略前面四行 <=====
    for (int i = 0; i < 4; ++i)
    {
        std::getline(infile, line);
    }

    // =====> 读取数据 到 wave 和 srf 数组<=====
    while (std::getline(infile, line))
    {
        std::istringstream iss(line);
        if (!(iss >> w >> s))
        {
            std::cout << "Error reading line: " << line << std::endl;
            break;
        }
        w = 1.0 / w * 1e7; // cm-1 to nm
        // std::cout << std::fixed << w << " " << s << std::endl;
        wave.push_back(w);
        srf.push_back(s);
    }
}

/**
 * 计算ecw
 */
double cal_ecw(std::vector<double> &wave, std::vector<double> &srf)
{
    // =====> 计算总面积和1/2面积 <=====
    double sum_srf = trapz(srf, wave);
    double sum_srf_2 = sum_srf / 2.0;

    // =====> 二分法 迭代 <=====
    double tmp_srf = -1;                     //初始面积
    double lwave = wave[0];                  //左区间
    double rwave = wave[wave.size() - 1];    //右区间
    double tmp_wave = (lwave + rwave) / 2.0; //中间点
    while (true)
    {
        // =====> 计算当前面积 <=====
        std::vector<double> srf_tmp;
        for (size_t i = 0; i < wave.size(); ++i)
        {
            if (wave[i] <= tmp_wave)
            {
                srf_tmp.push_back(srf[i]);
            }
            else
            {
                srf_tmp.push_back(0.0);
            }
        }
        tmp_srf = trapz(srf_tmp, wave);

        // =====> 更新左右区间 <=====
        if (std::abs(rwave - lwave) < 1e-6)
        {
            break;
        }
        else if (tmp_srf > sum_srf_2)
        {
            rwave = tmp_wave;
        }
        else
        {
            lwave = tmp_wave;
        }
        tmp_wave = (lwave + rwave) / 2.0;
    }
    return tmp_wave;
}