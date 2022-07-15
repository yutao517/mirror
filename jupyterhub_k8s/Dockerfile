FROM registry.cn-hangzhou.aliyuncs.com/yutao517/ubuntu:focal
RUN mkdir /jupyterhub
WORKDIR /jupyterhub
RUN cd /jupyterhub &&\
    apt-get update &&\
    apt-get install python3-pip -y &&\
    python3 -m pip install --upgrade pip &&\
    apt-get update &&\
    apt-get install npm nodejs-legacy -y &&\
    npm install n -g &&\
    n lts &&\
    pip install notebook -i https://pypi.douban.com/simple &&\
    pip install jupyterlab -i https://pypi.douban.com/simple &&\
    npm install -g configurable-http-proxy &&\
    python3 -m pip install jupyterhub &&\
    useradd user1 &&\
    echo user1:user1 | chpasswd &&\
    mkdir /home/user1  &&\
    chown user1 /home/user1 -R &&\
    pip install --no-cache --upgrade  jupyterlab -i https://pypi.douban.com/simple
ADD jupyterhub_config.py jupyterhub.yutao.key jupyterhub.yutao.pem  /jupyterhub
EXPOSE 8000
CMD ["jupyterhub"]

