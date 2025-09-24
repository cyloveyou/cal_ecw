#include "lib_ecl.h"
using namespace std;

int main(int argc, char *argv[])
{
    string path;
    if (argc == 1)
    {
        path = "../../srf_data/rtcoef_sentinel3_1_olci_srf_ch01.txt";
    }
    else
    {
        path = argv[1];
    }
    cout << "inputfile: " << path << endl;
    vector<double> wave;
    vector<double> srf;
    read_srf_data(path, wave, srf);
    double ecl = cal_ecl(wave, srf);
    cout << fixed << ecl << endl;
    return 0;
}