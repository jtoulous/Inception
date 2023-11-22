FROM debian:bullseye

RUN apt-get update \
    && apt-get install mariadb-server -y \
    && apt-get install mariadb-client -y \

COPY tools/init.sh home/init.sh

#CMD ["mysqld"]