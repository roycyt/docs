# cmocka

## 從原始碼安裝

前置需求：

* C Compiler
* CMake >= 3.5.0

步驟：

```
$ curl -LO https://cmocka.org/files/1.1/cmocka-1.1.6.tar.xz
$ tar xvf cmocka-1.1.6.tar.xz
$ cd cmocka-1.1.6
$ mkdir build && cd build
$ cmake -DCMAKE_INSTALL_PREFIX=$HOME/opt -DCMAKE_BUILD_TYPE=Debug ..
$ make && make install
```
