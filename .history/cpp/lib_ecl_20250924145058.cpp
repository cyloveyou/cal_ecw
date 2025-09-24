#include "libxl.h"
#include <iostream>
#include <string>
#include <vector>

double trapz(std::vector<double> y, std::vector<double> x) {
  double integral = 0.0;
  for (size_t i = 1; i < y.size(); ++i) {
    integral += 0.5 * (y[i] + y[i - 1]) * (x[i] - x[i - 1]);
  }
  std::cout << "Integral: " << integral << std::endl;
  return integral;
}