#include <fstream>
#include <sstream>
#include <iostream>
#include <string>
#include <vector>

double trapz(std::vector<double> y, std::vector<double> x);

void read_srf_data(std::string filepath, std::vector<double> &wave, std::vector<double> &srf);

double cal_ecl();