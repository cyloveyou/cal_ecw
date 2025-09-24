#include "lib_ecl.h"
using namespace std;

void testlibecl() {
  vector<double> x = {1, 2, 3, 4, 5};
  vector<double> y = {0, 1, 1, 1, 0};

  cout << trapz(y, x) << endl;
}

int main() {
  const char *path = "../../srf_data/GF1/GF-1-PMS.xls";
  vector<double> x;
  vector<vector<double>> y;
  vector<string> bandname;
  readexcel(path, x, y, bandname);
  return 0;
}