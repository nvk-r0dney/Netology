FROM centos:7

ENV PYTHON_VERSION=3.9.1

EXPOSE 5290 5290

RUN yum install -y gcc openssl-devel bzip2-devel libffi-devel zlib-devel tar wget make curl && \
    wget https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz && \
    tar xzf Python-${PYTHON_VERSION}.tgz && rm Python-${PYTHON_VERSION}.tgz && \
    yum clean all

WORKDIR /Python-${PYTHON_VERSION}

RUN ./configure --enable-optimizations && make altinstall && \
    ln -sf /usr/local/bin/python3.9 /usr/bin/python3 && \
    cd / && rm -rf /Python-${PYTHON_VERSION} && \
    yum install -y python3-pip && yum clean all

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

ADD python-api.py /python_api/python-api.py

ENTRYPOINT ["python3", "/python_api/python-api.py"]