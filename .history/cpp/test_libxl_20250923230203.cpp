#include "libxl.h"
#include <iostream>
#include <string>

using namespace std;
using namespace libxl;

int main() {
  const char *path = "../../srf_data/光谱响应函数20240410/GF1/GF-1 PMS.xls";
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
  return 0;
}