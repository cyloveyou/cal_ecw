#include "lib_ecl.h"
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

int main() {
  vector<double> x = {1, 2, 3, 4, 5};
  vector<double> y = {0, 1, 1, 1, 0};
  trapz(y, x);
  return 0;
}