#include <fstream>
#include <iostream>
#include <string>
#include <vector>

double trapz(std::vector<double> y, std::vector<double> x);

void read_srf_data(std::string filepath, std::vector<double> &wave, std::vector<double> &srf);

void cal_ecl();