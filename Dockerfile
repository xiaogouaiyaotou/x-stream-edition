FROM ubuntu:latest
WORKDIR /x-stream
COPY . /x-stream

RUN apt-get update && apt-get install -y wget zlib1g-dev unzip \
        build-essential \
        libboost-dev \
        libboost-system-dev \
        libboost-program-options-dev \
        libboost-thread-dev
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN cd x-stream \
        && make && make install
