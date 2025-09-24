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
  book->load(path);
  libxl::Sheet *sheet = book->getSheet(0);

  int rows = sheet->lastRow();
  int cols = sheet->lastCol();

  //读取波段名称
  for (int c = 2; c <= cols; ++c) {
    const char *s = sheet->readStr(1, c); // 第1行
    std::cout << s << std::endl;
    bandname.push_back(s);
  }
  //读取数据

  book->release();
  return true;
}