FROM ubuntu
COPY ./pdf ./pdftojson_debug
COPY ./pdf ./pdftojson_release

WORKDIR ./pdftojson_debug
RUN apt update && apt install gcc g++ make git -y
RUN apt install libz-dev libpng-dev lcov -y

RUN bash ./config_ubuntu.sh && make

WORKDIR ../pdftojson_release
RUN ./configure && make
