FROM ubuntu:latest

RUN apt update \
    && apt install -y --no-install-recommends \ 
    build-essential \
    libtool \
    autotools-dev \
    automake \ 
    pkg-config \
    bsdmainutils \
    python3 \ 
    libevent-dev \
    libboost-dev \
    libsqlite3-dev \
    libzmq3-dev \
    systemtap-sdt-dev \
    gdb \
    ccache
# COPY ./bitcoin /bitcoin
# COPY ./buildBitcoin.sh /buildBitcoin.sh
# RUN chmod +x /buildBitcoin.sh
# RUN /buildBitcoin.sh

