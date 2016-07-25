FROM ubuntu:14.04

MAINTAINER Alexandr Bordun <bordun.alexandr@gmail.com>

ENV TERM xterm
ENV DEBIAN_FRONTEND noninteractive

RUN locale-gen en_US.UTF-8
ENV LANG       en_US.UTF-8
ENV LC_ALL     en_US.UTF-8

RUN apt-get update && apt-get -y install \
    python-software-properties software-properties-common wget curl git nano openssh-server htop

RUN add-apt-repository ppa:nginx/development && curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get update && apt-get install -y nginx nodejs

RUN cd $HOME && wget http://getcomposer.org/composer.phar && chmod +x composer.phar && \
    mv composer.phar /usr/local/bin/composer && npm install -g bower grunt-cli gulp pm2

RUN chsh -s /bin/bash www-data && \
    chown -R www-data:www-data /var/www

RUN sed -i "s/# server_tokens off;/server_tokens off;/" /etc/nginx/nginx.conf

EXPOSE 80 443 22
