#include "libxl.h"
#include <iostream>
#include <string>
#include <vector>

double trapz(std::vector<double> y, std::vector<double> x);

bool readexcel(const char *path);