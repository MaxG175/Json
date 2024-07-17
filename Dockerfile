FROM ubuntu
COPY ./pdf ./pdftojson
WORKDIR ./pdftojson 
RUN apt update && apt install gcc g++ make git -y
RUN apt install libz-dev libpng-dev lcov -y

RUN bash ./config_ubuntu.sh && make
