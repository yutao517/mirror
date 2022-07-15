FROM registry.cn-hangzhou.aliyuncs.com/yutao517/ubuntu:focal
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai
RUN mkdir -p /jupyterhub/study
WORKDIR /jupyterhub
RUN set -ex; \
    cd /jupyterhub &&\
    apt-get update &&\
    apt-get install wget -y &&\
    apt-get install curl -y &&\
    apt-get install python3-pip -y &&\
    python3 -m pip install --upgrade pip &&\
    apt-get install npm -y &&\
    apt-get install nodejs -y &&\
    apt-get install libnode64 &&\
    npm install n -g &&\
    pip install notebook &&\
    pip install jupyterlab &&\
    pip install jupyterlab-language-pack-zh-CN &&\
    npm install -g configurable-http-proxy &&\
    python3 -m pip install jupyterhub &&\
    useradd admin &&\
    echo admin:admin | chpasswd &&\
    mkdir /home/admin  &&\
    chown admin /home/admin -R &&\
    chown admin /jupyterhub/study -R 
COPY jupyterhub_config.py /jupyterhub
COPY jupyterhub.yutao.co.key /jupyterhub
COPY jupyterhub.yutao.co.pem /jupyterhub
EXPOSE 443
CMD ["jupyterhub"]
