FROM php:8.0-apache

RUN apt update && apt install -y git
RUN apt install wget && wget https://getcomposer.org/download/latest-stable/composer.phar && chmod 755 composer.phar
RUN mv composer.phar /usr/local/bin/composer

RUN apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

RUN a2enmod rewrite