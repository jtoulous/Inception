FROM	debian:buster

ENV DOMAIN_NAME=jtoulous.42.fr
ENV WP_TITLE=42INCEPTION
ENV WP_USER=amnesia
ENV WP_PASSWORD=amnesia
ENV WP_PATH=/var/www/wordpress
ENV WP_EMAIL=jtoulous@student.42.fr
ENV PHP_PORT=9000

RUN     apt update -y && \
        apt-get upgrade -y && \
        apt-get install -y php \
        php-mysql \
        php-cli \
        php-mbstring \
        php-fpm \
        php-gettext \
        mariadb-client \
        wget && \
        rm -rf /etc/php/7.3/fpm/pool.d/www.conf && \
        mkdir -p /run/php

COPY    ./conf/www.conf /etc/php/7.3/fpm/pool.d/
COPY    ./tools/run.sh /tmp/

RUN     chmod +x /tmp/run.sh

#EXPOSE	9000

ENTRYPOINT [ "sh", "/tmp/run.sh" ]
