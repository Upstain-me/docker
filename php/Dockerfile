FROM php:7.4-fpm-alpine

RUN apk add --update \
    autoconf \
    g++ \
    libtool \
    make \
    curl \
    openssh-client \
    nano \
    libssh-dev \
    icu-dev \
    libxml2-dev

RUN apk add oniguruma-dev \
    && docker-php-ext-install mbstring \
    && docker-php-ext-enable mbstring

RUN apk add --no-cache libzip-dev && docker-php-ext-configure zip && docker-php-ext-install zip

RUN docker-php-ext-install mysqli \
	&& docker-php-ext-install opcache \
	&& docker-php-ext-install intl \
    && docker-php-ext-install pdo pdo_mysql \
    && pecl install xdebug \
    && docker-php-ext-enable mysqli \
    && docker-php-ext-enable opcache \
    && docker-php-ext-enable intl \
    && docker-php-ext-enable pdo_mysql \
    && docker-php-ext-enable xdebug

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer global require hirak/prestissimo

COPY disable-xdebug.sh /bin/dxd
COPY enable-xdebug.sh /bin/exd
ADD php.ini /usr/local/etc/php/conf.d/php.ini
ADD xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini
