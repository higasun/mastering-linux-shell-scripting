FROM ubuntu:latest

RUN mkdir /root/workspace

WORKDIR /root/workspace

RUN apt-get update -y --fix-missing \
    && apt-get install -y --no-install-recommends \
    sudo \
    build-essential \
    vim \
    man \
    manpages-dev \
    strace \
    gdb \
    tree \
    psmisc \
    net-tools \
    iputils-ping