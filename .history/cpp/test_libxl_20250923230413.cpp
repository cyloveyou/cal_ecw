#include "libxl.h"
#include <iostream>
#include <string>

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

bool

    int
    main() {
  return 0;
}