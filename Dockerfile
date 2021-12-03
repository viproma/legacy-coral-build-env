FROM debian:stretch
RUN apt-get update && apt-get install -y \
    wget \
    build-essential \
    autoconf \
    automake \
    libtool \
    cmake \
    git \
    doxygen \
    libboost-all-dev \
    libzmq3-dev \
    libzip-dev \
    libprotobuf-dev \
    protobuf-compiler \
    openjdk-8-jdk
RUN wget https://github.com/viproma/debian-fmilib/releases/download/debian/2.0.3-1/libfmilib2_2.0.3-1_amd64.deb && \
    wget https://github.com/viproma/debian-fmilib/releases/download/debian/2.0.3-1/libfmilib2-dev_2.0.3-1_amd64.deb && \
    wget https://github.com/viproma/debian-fmilib/releases/download/debian/2.0.3-1/libfmilib2-dbgsym_2.0.3-1_amd64.deb && \
    dpkg -i libfmilib2*.deb
ADD entrypoint.sh /
CMD /entrypoint.sh
