FROM ubuntu:16.04
MAINTAINER Narendra Vaghela <narendravaghela4389@gmail.com>
RUN apt-get -y update && apt-get -y install
RUN apt-get -y install git curl libcurl3 libcurl3-dev zip upzip
# PHP7 and packages
RUN apt-get -y install php7.0
RUN apt-get -y install php7.0-cli php7.0-mysql php7.0-mcrypt php7.0-curl
RUN apt-get -y install php7.0-xmlrpc php7.0-gd php7.0-json php7.0-intl php7.0-mbstring
RUN apt-get -y install php7.0-pgsql php7.0-xsl php7.0-zip
# -----------------------------------------------------------------------------
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN apt-get -y install build-essential nodejs npm
RUN npm install -g bower
