#!/usr/bin/env sh

mv /usr/local/etc/php/conf.d/disabled/docker-php-ext-xdebug.ini /usr/local/etc/php/conf.d/
# restart fpm process
kill -USR2 1
