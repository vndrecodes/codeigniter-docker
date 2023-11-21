FROM php:8.3-rc-fpm

RUN apt update && apt upgrade \
&& apt install unzip libonig-dev libicu-dev -y\
&& curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
&& docker-php-ext-install intl mbstring

COPY ./php.ini /usr/local/etc/php/
COPY ./run.sh /root/

RUN chmod 0755 /root/run.sh

WORKDIR /var/www/html