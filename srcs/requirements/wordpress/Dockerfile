FROM	debian:buster

ENV SQL_DATABASE=inception
ENV SQL_USER=jtoulous
ENV SQL_PWD=1880040410
ENV DOMAIN_NAME=jtoulous.42.fr
ENV WP_TITLE=42INCEPTION
ENV WP_USER=amnesia
ENV WP_PWD=amnesia
ENV WP_PATH=/var/www/wordpress
ENV WP_EMAIL=jtoulous@student.42.fr
ENV PHP_PORT=9000

RUN     apt update -y \
        && apt-get upgrade -y \
        && apt-get install -y php \
        && apt-get install -y php-mysql \
        && apt-get install -y php-cli \
        && apt-get install -y php-mbstring \
        && apt-get install -y php-fpm \
        && apt-get install -y php-gettext \
        && apt-get install -y mariadb-client \
        && apt-get install -y wget \
        && rm -rf /etc/php/7.3/fpm/pool.d/www.conf \
        && mkdir -p /run/php 

COPY    ./conf/www.conf /etc/php/7.3/fpm/pool.d/

EXPOSE 9000

#CMD tail -f /dev/null