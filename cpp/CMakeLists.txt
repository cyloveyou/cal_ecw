cmake_minimum_required(VERSION 3.22)
project(main_ecw)

# 设置C++标准为C++11
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Debug or Release
set(CMAKE_BUILD_TYPE Debug)

# 添加库文件
add_library(lib_ecw SHARED lib_ecw.cpp)

# 添加可执行文件
add_executable(main_ecw main_ecw.cpp)

# 链接库文件
target_link_libraries(main_ecw lib_ecw)