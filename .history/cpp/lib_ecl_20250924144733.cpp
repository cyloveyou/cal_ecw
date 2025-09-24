#include "libxl.h"

using namespace std;

double trapz(vector<double> y, vector<double> x) {
  double integral = 0.0;
  for (size_t i = 1; i < y.size(); ++i) {
    integral += 0.5 * (y[i] + y[i - 1]) * (x[i] - x[i - 1]);
  }
  cout << "Integral: " << integral << endl;
  return integral;
}