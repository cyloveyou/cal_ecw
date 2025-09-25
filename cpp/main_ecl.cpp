/**
 * @Time    :2025/09/24 23:55:38
 * @Author  :小 y 同 学
 * @公众号   :小y只会写bug
 * @CSDN    :https://blog.csdn.net/weixin_64989228?type=blog
 */
#include "lib_ecl.h"
using namespace std;

int main(int argc, char *argv[])
{
    string path;
    // =====> 对输入参数进行处理 <=====
    if (argc == 1)
    {
        path = "../../srf_data/rtcoef_sentinel3_1_olci_srf_ch01.txt";
    }
    else
    {
        path = argv[1];
    }
    cout << "inputfile: " << path << endl;

    // =====> 读取SRF数据 <=====
    vector<double> wave;
    vector<double> srf;
    read_srf_data(path, wave, srf);
    // =====> 计算 等效中心波长ecl <=====
    double ecl = cal_ecl(wave, srf);

    cout << fixed << ecl << endl;
    return 0;
}