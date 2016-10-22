FROM borales/ubuntu

MAINTAINER Alexandr Bordun

RUN LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php && apt-get update

# Installing PHP packages
RUN apt-get install -y mysql-client-5.7 \
    php-apcu php7.0-curl php7.0-fpm php7.0-gd php-imagick php7.0-json \
    php7.0-intl php-memcached php7.0-mcrypt php7.0-mysql php-mongodb \
    php-pear php-redis php7.0-xsl php7.0-mbstring php7.0-zip php7.0-xml php7.0-opcache

RUN sed -i "s/;date.timezone =.*/date.timezone = UTC/" /etc/php/7.0/cli/php.ini
RUN sed -i "s/;date.timezone =.*/date.timezone = UTC/" /etc/php/7.0/fpm/php.ini
RUN sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php/7.0/fpm/php.ini
RUN echo "www-data ALL=(ALL) NOPASSWD:/usr/sbin/service php7.0-fpm restart" >> /etc/sudoers

ADD ./run-server.sh /run-server.sh
CMD bash -x run-server.sh