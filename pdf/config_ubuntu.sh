export CXX="g++"
export CC="gcc"
export CFLAGS="-I/usr/include/freetype2 -I/usr/include -g -O0 --coverage -fsanitize=address"
export CXXFLAGS="-I/usr/include/freetype2 -I/usr/include -g -O0 --coverage -fsanitize=address"
./configure
