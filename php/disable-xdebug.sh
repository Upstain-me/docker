#!/usr/bin/env sh

mkdir -p /usr/local/etc/php/conf.d/disabled
mv /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini /usr/local/etc/php/conf.d/disabled
# restart fpm process
kill -USR2 1
