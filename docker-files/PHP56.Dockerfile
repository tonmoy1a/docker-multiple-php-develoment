FROM php:5.6-apache

# RUN apt-get update && apt-get install -y git
# RUN apt-get install wget && wget https://getcomposer.org/download/latest-stable/composer.phar && chmod 755 composer.phar
# RUN mv composer.phar /usr/local/bin/composer

RUN sed -i s/deb.debian.org/archive.debian.org/g /etc/apt/sources.list
RUN sed -i 's|security.debian.org|archive.debian.org/|g' /etc/apt/sources.list
RUN sed -i '/stretch-updates/d' /etc/apt/sources.list


RUN apt-get update && \
apt-get install -y --no-install-recommends \
    curl \
    libmemcached-dev \
    libz-dev \
    libpq-dev \
    libjpeg-dev \
    libjpeg62-turbo-dev\
    libfreetype6-dev \
    libssl-dev \
    libmcrypt-dev
    
RUN apt-get update && apt-get install -y \ 
libfreetype6-dev libjpeg62-turbo-dev \ 
libgd-dev libpng-dev
RUN docker-php-ext-configure gd \ 
--with-freetype-dir=/usr/include/ \ 
--with-jpeg-dir=/usr/include/

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install pdo_mysql mbstring mysql mysqli gd

RUN a2enmod rewrite