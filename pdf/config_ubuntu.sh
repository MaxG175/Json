export CXX="afl-c++"
export CC="afl-cc"
export AFL_USE_ASAN=1
export AFL_USE_UBSAN=1
export CFLAGS="-I/usr/include/freetype2 -I/usr/include -g -O0 --coverage -fsanitize=address"
export CXXFLAGS="-I/usr/include/freetype2 -I/usr/include -g -O0 --coverage -fsanitize=address"
./configure
