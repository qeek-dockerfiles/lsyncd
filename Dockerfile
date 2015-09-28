FROM debian

RUN apt-get update -y
RUN apt-get install git -y
RUN apt-get install cmake -y
RUN apt-get install build-essential -y 
RUN apt-get install lua5.2 -y
RUN apt-get install liblua5.2-dev -y
RUN cd /root &&\
 git clone https://github.com/axkibe/lsyncd.git &&\
 cd lsyncd &&\
 cmake -DCMAKE_INSTALL_PREFIX=/usr/local/lsyncd-2.1.5 &&\
 make && make install &&\
 rm -rf /root/lsyncd &&\
 mkdir /usr/local/lsyncd-2.1.5/etc &&\
 mkdir /usr/local/lsyncd-2.1.5/var

# start fluentd
WORKDIR /data
EXPOSE 80
