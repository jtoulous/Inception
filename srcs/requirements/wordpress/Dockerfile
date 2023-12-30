FROM debian:bullseye


RUN apt update -y \ 
    && apt install php7.4-fpm php-mysql -y \
    && apt install mariadb-client -y \
    && apt install curl -y \
    && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

COPY ./tools/script.sh /

CMD [ "/script.sh" ]