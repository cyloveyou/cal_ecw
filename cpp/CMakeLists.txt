cmake_minimum_required(VERSION 3.22)
project(main_ecl)

# 设置C++标准为C++11
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Debug or Release
set(CMAKE_BUILD_TYPE Debug)

# 库文件
add_library(lib_ecl SHARED lib_ecl.cpp)

# 可执行文件
add_executable(main_ecl main_ecl.cpp)

# 链接库文件
target_link_libraries(main_ecl lib_ecl)