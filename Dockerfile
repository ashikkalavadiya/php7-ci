FROM php:7.0
MAINTAINER Narendra Vaghela <narendravaghela4389@gmail.com>
RUN apt-get -y update && apt-get -y install
RUN apt-get -y install git curl libcurl3 libcurl3-dev
# PHP packages
# -----------------------------------------------------------------------------
RUN apt-get -y install php7.0-cli \
    && php7.0-mysql \
    && php7.0-mcrypt \
    && php7.0-imagick \
    && php7.0-curl \
    && php7.0-xmlrpc \
    && php7.0-gd \
    && php7.0-json \
    && php7.0-intl \
    && php7.0-mbstring \
    && php7.0-pgsql \
    && php7.0-xsl \
    && php7.0-memcached \
    && php7.0-ldap \
    && php7.0-xdebug \
    && php7.0-sqlite3 \
    && libapache2-mod-php7.0
# -----------------------------------------------------------------------------
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN apt-get -y install build-essential nodejs npm
RUN npm install -g bower
