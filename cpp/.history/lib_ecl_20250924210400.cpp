#include "lib_ecl.h"

double trapz(std::vector<double> y, std::vector<double> x)
{
    double sum_area = 0.0;
    for (size_t i = 1; i < y.size(); ++i)
    {
        sum_area += 0.5 * (y[i] + y[i - 1]) * (x[i] - x[i - 1]);
    }
    return sum_area;
}

// bool readexcel(const char *path, std::vector<double> &x,
//                std::vector<std::vector<double>> &y,
//                std::vector<std::string> &bandname)
// {
//     libxl::Book *book = xlCreateBook();
//     book->load(path);
//     libxl::Sheet *sheet = book->getSheet(0);

//     int rows = sheet->lastRow();
//     int cols = sheet->lastCol();

//     //读取波段名称
//     for (int c = 1; c < cols; c++)
//     {
//         const char *s = sheet->readStr(1, c); // 从第0行起算
//         bandname.push_back(s);
//     }
//     //读取x数据
//     for (int r = 2; r < rows; r++)
//     {
//         double wave = sheet->readNum(r, 0);
//         x.push_back(wave);
//         std::vector<double> y_row;
//     }
//     //读取y数据
//     for (int c = 1; c < cols; c++)
//     {
//         std::vector<double> y_col;
//         for (int r = 2; r < rows; r++)
//         {
//             double srf = sheet->readNum(r, c);
//             const char *str = sheet->readStr(r, c);
//             std::cout << "Str: " << sheet->readStr(r, c) << std::endl;
//             //   y_col.push_back(srf);
//         }
//         y.push_back(y_col);
//     }
//     std::cout << y[0].size() << std::endl;
//     //   for (int i = 0; i < y[0].size(); i++) {
//     //     std::cout << y[0][i] << " ";
//     //   }

//     book->release();
//     return true;
// }

bool readexcel(const char *path, std::vector<double> &x,
               std::vector<std::vector<double>> &y,
               std::vector<std::string> &bandname)
{
    xlnt::workbook wb;
    wb.load(path);
    xlnt::worksheet ws = wb.active_sheet();

    std::cout << ws.highest_row() << " " << ws.highest_column().column_string() << std::endl;
    return true;
}