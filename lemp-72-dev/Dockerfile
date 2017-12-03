FROM borales/nginx-php:latest

MAINTAINER Alexandr Bordun

# Installing PHP packages
RUN apt-get install -y php-xdebug

RUN sed -i "s/max_execution_time = 30/max_execution_time = 3000/" /etc/php/7.2/fpm/php.ini
RUN sed -i "s/max_execution_time = 30/max_execution_time = 3000/" /etc/php/7.2/cli/php.ini

ADD ./mods/xdebug.ini /etc/php/7.2/mods-available/xdebug.ini
