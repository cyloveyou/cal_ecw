#include "lib_ecl.h"
using namespace std;

bool testlibecl() {
  vector<double> x = {1, 2, 3, 4, 5};
  vector<double> y = {0, 1, 1, 1, 0};
}

int main() {

  cout << trapz(y, x) << endl;
  return 0;
}