FROM	debian:buster

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
        && mkdir -p /run/php \
        && mkdir -p /var/www \
        && mkdir -p /var/www/wordpress

COPY    ./conf/www.conf /etc/php/7.3/fpm/pool.d/
COPY    ./tools/init.sh /tmp/

RUN     chmod 777 /tmp/init.sh \
        && chmod 777 var/www \
        && chmod 777 var/www/wordpress 

#CMD ["./tmp/init.sh"]