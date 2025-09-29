# cal_ecw
包含批量下载光谱响应函数、二分法计算光谱等效波长的脚本（Python、C++）。

## FileTree
```
.
├── cpp         #C++实现
│   ├── batch_cal.sh        #并行批处理脚本
│   ├── CMakeLists.txt      #cmake配置文件
│   ├── gmt_plot.sh         #gmt绘图脚本
│   ├── gmt_res/            #gmt绘图结果
│   ├── lib_ecw.cpp         #光谱响应函数库实现
│   ├── lib_ecw.h           #光谱响应函数库头文件
│   └── main_ecw.cpp        #光谱响应函数主程序
├── dlsrf       #下载光谱响应函数文件
│   ├── batch               #批下载、解压等命令
│   ├── dlsrfdata.py        #获取光谱响应函数下载链接
│   ├── gzip/               #解压前的srf文件
│   ├── srf_download        #光谱响应函数下载链接
│   └── txt/                #解压后的srf文件
├── python      #Python实现
│   ├── batch_cal.sh        #并行批处理脚本
│   ├── lib_ecw.py          #光谱响应函数库实现
│   ├── main_ecw.py         #光谱响应函数主程序
│   ├── pic/                #中间迭代结果绘图
│   ├── res/                #Matplotlib绘图结果
│   └── test_lib_ecw.py     #测试lib_ecw.py
├── readme.md
└── srf_data/               #解压后的srf文件
```

欢迎你的Follow、Star&Pull requests！