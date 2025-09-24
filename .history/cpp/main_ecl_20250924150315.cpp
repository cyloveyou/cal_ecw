#include "lib_ecl.h"

using namespace std;
using namespace libxl;

int main() {
  vector<double> x = {1, 2, 3, 4, 5};
  vector<double> y = {0, 1, 1, 1, 0};
  cout << trapz(y, x) << endl;
  return 0;
}