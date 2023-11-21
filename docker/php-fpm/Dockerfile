FROM php:8.3-rc-fpm

COPY ./php.ini /usr/local/etc/php/

RUN apt update && apt upgrade \
&& apt install unzip libonig-dev libicu-dev -y\
&& curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
&& docker-php-ext-install intl mbstring \
# && docker-php-ext-enable intl \
# && docker-php-ext-enable mbstring \
&& composer create-project codeigniter4/appstarter myapp