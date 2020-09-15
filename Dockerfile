FROM ubuntu:16.04
ENV TZ="Asia/Shanghai"
RUN apt update
RUN apt install tzdata
RUN rm /etc/localtime
RUN ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ENTRYPOINT date