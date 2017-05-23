FROM amazonlinux:2017.03

MAINTAINER akrug@mozilla.com

# Patch this image

RUN yum update -y

# Install the apex binary

RUN curl https://raw.githubusercontent.com/apex/apex/master/install.sh | sh

# Install python 3.6.1

RUN yum install gcc wget findutils zlib zlib-devel -y

WORKDIR /usr/src/

RUN wget https://www.python.org/ftp/python/3.6.1/Python-3.6.1.tgz

RUN tar xzf Python-3.6.1.tgz

WORKDIR /usr/src/Python-3.6.1

RUN ./configure --enable-optimizations

RUN make altinstall

RUN rm /usr/src/Python-3.6.1.tgz
