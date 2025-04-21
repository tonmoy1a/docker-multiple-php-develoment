FROM php:8.2-apache

RUN apt update && apt install -y git
RUN apt install wget && wget https://getcomposer.org/download/latest-stable/composer.phar && chmod 755 composer.phar
RUN mv composer.phar /usr/local/bin/composer

RUN apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libgd-dev \
    libzip-dev \
    jpegoptim optipng pngquant gifsicle \
    zip \
    unzip

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg
RUN docker-php-ext-install pdo_mysql mysqli mbstring exif pcntl bcmath gd zip

RUN a2enmod rewrite