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
    ccache \ 
    gosu

ENV PATH=/bitcoin/build/src:$PATH

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

RUN bitcoind -version | grep "Bitcoin Core version v${BITCOIN_VERSION}"

