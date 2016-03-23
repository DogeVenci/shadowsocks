# About shadowsocks of Docker
# 
# Version:1.0.1

FROM ubuntu:14.04
MAINTAINER Dubu Qingfeng <1135326346@qq.com>

ENV REFRESHED_AT 2015-06-05

RUN apt-get -qq update && \
    apt-get install -q -y git-core python-m2crypto python-gevent&& \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/ReZELChan/shadowsocks.git ~/shadowsocks

ADD run.sh /usr/local/bin/run.sh
RUN chmod 755 /usr/local/bin/run.sh

EXPOSE 8389

CMD ["sh", "-c", "run.sh"]
#ENTRYPOINT ["/usr/local/bin/ssserver"]