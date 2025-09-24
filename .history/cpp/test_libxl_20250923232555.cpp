#include "libxl.h"
#include <iostream>
#include <string>
#include <vector>

using namespace std;
using namespace libxl;

bool readexcel(const char *path) {
  Book *book = xlCreateBook();
  if (book->load(path)) {
    Sheet *sheet = book->getSheet(0);
    if (sheet) {
      const char *s = sheet->readStr(2, 1);
      if (s)
        printf("Cell (2,1): %s\n", s);
    }
  }
  book->release();
  return true;
}

double trapz(vector<double> y, vector<double> x) {
  double integral = 0.0;
  for (size_t i = 1; i < y.size(); ++i) {
    integral += 0.5 * (y[i] + y[i - 1]) * (x[i] - x[i - 1]);
  }
  cout << "Integral: " << integral << endl;
  return true;
}

int main() { return 0; }