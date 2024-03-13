FROM ubuntu:bionic

RUN apt update
RUN apt install -y default-jdk

COPY ./apache-activemq-5.15.16 /app/activemq/
WORKDIR /app/activemq/bin
ENTRYPOINT ./activemq console
