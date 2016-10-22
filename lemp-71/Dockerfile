FROM borales/ubuntu

MAINTAINER Alexandr Bordun

RUN LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php && apt-get update

# Installing PHP packages
RUN apt-get install -y mysql-client-5.7 \
    php-apcu php7.1-curl php7.1-fpm php7.1-gd php-imagick php7.1-json \
    php7.1-intl php-memcached php7.-mcrypt php7.1-mysql php-mongodb \
    php-pear php-redis php7.1-xsl php7.1-mbstring php7.1-zip php7.1-xml php7.-opcache

RUN sed -i "s/;date.timezone =.*/date.timezone = UTC/" /etc/php/7.1/cli/php.ini
RUN sed -i "s/;date.timezone =.*/date.timezone = UTC/" /etc/php/7.1/fpm/php.ini
RUN sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php/7.1/fpm/php.ini
RUN echo "www-data ALL=(ALL) NOPASSWD:/usr/sbin/service php7.1-fpm restart" >> /etc/sudoers

ADD ./run-server.sh /run-server.sh
CMD bash -x run-server.sh