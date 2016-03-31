FROM borales/lemp-70:latest

MAINTAINER Alexandr Bordun

# Installing PHP packages
RUN apt-get install -y php-xdebug

RUN sed -i "s/max_execution_time = 30/max_execution_time = 3000/" /etc/php/7.0/fpm/php.ini
RUN sed -i "s/max_execution_time = 30/max_execution_time = 3000/" /etc/php/7.0/cli/php.ini

ADD ./mods/xdebug.ini /etc/php/mods-available/xdebug.ini
