FROM centos:7

MAINTAINER Lorenzo Carnevale <lorenzocarnevale@gmail.com>

ENV USERNAME ""
ENV PASSWORD ""
ENV INTERVAL 30

RUN yum install -y wget gcc make

WORKDIR "/usr/local/src/"
RUN wget http://www.noip.com/client/linux/noip-duc-linux.tar.gz && \
  tar xf noip-duc-linux.tar.gz && \
  rm -rf noip-duc-linux.tar.gz

WORKDIR "noip-2.1.9-1/"
RUN make

COPY start.sh .
RUN chmod u+x start.sh

CMD ["sh", "-c", "./start.sh $USERNAME $PASSWORD $INTERVAL"]
