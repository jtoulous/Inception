FROM debian:bullseye


RUN apt update -y \ 
    && apt install php7.4-fpm php-mysql -y \
    && apt install curl -y


COPY ./tools/script.sh /

CMD [ "/script.sh" ]