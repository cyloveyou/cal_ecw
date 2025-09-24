#include "lib_ecl.h"
using namespace std;

void testlibecl()
{
    vector<double> x = {1, 2, 3, 4, 5};
    vector<double> y = {0, 1, 1, 1, 0};

    cout << trapz(y, x) << endl;
}

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
    vector<double> wave;
    vector<double> srf;
    read_srf_data(path, wave, srf);
    double ecl = cal_ecl(wave, srf);
    cout << fixed << ecl << endl;
    return 0;
}