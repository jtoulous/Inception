FROM debian:bullseye

RUN apt-get -y update \ 
    && apt-get install -y nginx \
    && apt-get install openssl -y \
    && mkdir -p /etc/nginx/ssl \
    && chmod 777 /etc/nginx/ssl \
    && openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Angouleme/O=42/OU=42/CN=jtoulous.42.fr/UID=jtoulous" \ 
    && mkdir -p /var/run/nginx \
    && chmod 777 /var/run/nginx \
    && chmod 777 /var/www/html \
    && chown -R www-data:www-data /var/www/html


COPY /conf/nginx.conf /etc/nginx/nginx.conf

CMD [ "nginx", "-g", "daemon off;" ]