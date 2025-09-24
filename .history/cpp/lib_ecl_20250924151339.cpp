#include "lib_ecl.h"

double trapz(std::vector<double> y, std::vector<double> x) {
  double integral = 0.0;
  for (size_t i = 1; i < y.size(); ++i) {
    integral += 0.5 * (y[i] + y[i - 1]) * (x[i] - x[i - 1]);
  }
  return integral;
}

bool readexcel(const char *path, std::vector<double> &x,
               std::vector<std::vector<double>> &y,
               std::vector<std::string> &bandname) {
  libxl::Book *book = xlCreateBook();
  if (book->load(path)) {
    libxl::Sheet *sheet = book->getSheet(0);
    int rows = sheet->lastRow();
    int cols = sheet->lastCol();
    std::cout << "Rows: " << rows << ", Cols: " << cols << std::endl;
    if (sheet) {
      const char *s = sheet->readStr(1, 3);
      if (s)
        std::cout << "Cell (2,1): " << s << std::endl;
    }
  }
  book->release();
  return true;
}