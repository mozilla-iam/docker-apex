FROM amazonlinux:2017.03

MAINTAINER akrug@mozilla.com

# Patch this image

RUN yum update -y

# Install the apex binary

RUN curl https://raw.githubusercontent.com/apex/apex/master/install.sh | sh

# Install python 3.6.1

RUN yum install gcc wget findutils zlib zlib-devel openssl-devel libffi-devl -y

WORKDIR /usr/src/

RUN wget https://www.python.org/ftp/python/3.6.1/Python-3.6.1.tgz

RUN tar xzf Python-3.6.1.tgz

WORKDIR /usr/src/Python-3.6.1

RUN ./configure --enable-optimizations

RUN make install

RUN rm /usr/src/Python-3.6.1.tgz

# Install pip

WORKDIR /root

RUN wget https://bootstrap.pypa.io/get-pip.py

RUN chmod +x get-pip.py

RUN python get-pip.py

RUN pip install awscli

RUN pip install awsmfa

RUN mkdir /workspace

WORKDIR /workspace

RUN yum clean all
