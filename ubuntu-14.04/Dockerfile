FROM ubuntu:14.04

MAINTAINER Alexandr Bordun <bordun.alexandr@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN locale-gen en_US.UTF-8
ENV LANG       en_US.UTF-8
ENV LC_ALL     en_US.UTF-8

RUN apt-get update && apt-get -y install \
    python-software-properties software-properties-common wget curl git nano openssh-server

RUN add-apt-repository ppa:nginx/development && apt-get update && apt-get install -y nginx

RUN cd $HOME && wget http://getcomposer.org/composer.phar && chmod +x composer.phar && \
    mv composer.phar /usr/local/bin/composer
