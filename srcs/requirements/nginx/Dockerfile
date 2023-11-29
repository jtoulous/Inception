FROM debian:bullseye

RUN apt-get update -y \
    && apt-get install nginx -y \
    && apt-get install openssl -y \
    && mkdir -p /etc/nginx/ssl \
    && openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Angouleme/O=42/OU=42/CN=jtoulous.42.fr/UID=jtoulous"

COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN chmod +x /etc/nginx/nginx.conf \
    && chmod +x /var/www/html \
    && chown -R www-data:www-data /var/www/html

CMD ["nginx", "-g", "daemon off;"]