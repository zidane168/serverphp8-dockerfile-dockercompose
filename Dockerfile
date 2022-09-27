# Docker Image Name : mcc/web-server
# Command to build Docker Image : docker build --platform=linux/amd64 -t mcc/web-server:php8-amd64 .
# Command to build Docker Image : docker build --platform=linux/arm64 -t mcc/web-server:php8-arm64 .
FROM php:8.1.10-apache
USER root
RUN apt-get update

# Install GD
RUN apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev \
	&& docker-php-ext-configure gd --with-freetype --with-jpeg \
	&& docker-php-ext-install -j$(nproc) gd

RUN apt-get install -y libpq-dev pkg-config libcurl4-openssl-dev libicu-dev libonig-dev libxslt-dev \
    && docker-php-ext-install pdo pdo_mysql curl fileinfo intl mbstring exif xsl

# Add php.ini config
COPY php/custom_config.ini /usr/local/etc/php/conf.d/

# Install OpenSSL
# RUN docker-php-ext-install openssl

# Enable RewriteModule
RUN a2enmod rewrite