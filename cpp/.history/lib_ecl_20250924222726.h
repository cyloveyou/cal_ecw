#include <xlnt/xlnt.hpp>
#include <iostream>
#include <string>
#include <vector>

double trapz(std::vector<double> y, std::vector<double> x);

void read_srf_data(std::string filepath, std::vector<double> &x, std::vector < double &y);

void cal_ecl();