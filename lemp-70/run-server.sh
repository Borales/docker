#!/usr/bin/env bash

sudo service nginx start
sudo service php7.0-fpm start

tail -f /dev/null