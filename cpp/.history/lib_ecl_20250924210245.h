#include <xlnt/xlnt.hpp>
#include <iostream>
#include <string>
#include <vector>

double trapz(std::vector<double> y, std::vector<double> x);

bool readexcel(const char *path, std::vector<double> &x,
               std::vector<std::vector<double>> &y,
               std::vector<std::string> &bandname);