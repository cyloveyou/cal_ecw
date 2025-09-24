#include "lib_ecl.h"

double trapz(std::vector<double> y, std::vector<double> x)
{
    double sum_area = 0.0;
    for (size_t i = 1; i < y.size(); ++i)
    {
        sum_area += 0.5 * (y[i] + y[i - 1]) * (x[i] - x[i - 1]);
    }
    return sum_area;
}

void read_srf_data()
{
}