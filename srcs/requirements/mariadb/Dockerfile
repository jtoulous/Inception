FROM debian:bullseye

ENV SQL_DATABASE=inception
ENV SQL_USER=jtoulous
ENV SQL_PWD=1880040410

RUN apt-get update \
    && apt-get install mariadb-server -y \
    && apt-get install mariadb-client -y

COPY tools/init.sh tmp/init.sh

RUN chmod +x tmp/init.sh

CMD ["./tmp/init.sh"]