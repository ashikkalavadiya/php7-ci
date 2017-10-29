FROM php:7.0-fpm

LABEL maintainer="ashik.kalavadiya@gmail.com"

RUN apt-get update && apt-get install -y \
		libfreetype6-dev \
		libjpeg62-turbo-dev \
		libmcrypt-dev \
		libpng12-dev \
		libcurl4-gnutls-dev \
		libicu-dev \
		libbz2-dev \
		libxml2-dev \
    		php-soap

RUN docker-php-ext-install mysqli pdo pdo_mysql curl mbstring intl mcrypt gd json xml xmlrpc soap