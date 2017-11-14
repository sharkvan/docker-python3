FROM centos

MAINTAINER Tim Schruben <tim@schruben.org>

RUN yum -y update && \
    yum -y install yum-utils && \
    yum -y groupinstall development && \
    yum -y install https://centos7.iuscommunity.org/ius-release.rpm && \
    yum -y install python36u && \
    yum -y install python36u-pip && \
    yum -y install python36u-devel

RUN mkdir /code && \
    cd /code

RUN python3.6 -m venv /code

SHELL ["/bin/bash", "-c"]

WORKDIR /code
