#include "lib_ecl.h"

/**
 * 梯形积分，注意x和y的位置
 */
double trapz(std::vector<double> y, std::vector<double> x)
{
    double sum_area = 0.0;
    for (size_t i = 1; i < y.size(); ++i)
    {
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
    //忽略前面四行
    for (int i = 0; i < 4; ++i)
    {
        std::getline(infile, line);
    }

    while (std::getline(infile, line))
    {
        std::istringstream iss(line);
        if (!(iss >> w >> s))
        {
            std::cout << "Error reading line: " << line << std::endl;
            break;
        }
        // std::cout << std::fixed << w << " " << s << std::endl;
        w = 1.0 / w * 1000.0; // cm-1 to nm
        wave.push_back(w);
        srf.push_back(s);
    }
}

void cal_ecl(std::vector<double> &wave, std::vector<double> &srf)
{
    double sum_srf = trapz(srf, wave);
    double sum_srf_2 = sum_srf / 2.0;
}