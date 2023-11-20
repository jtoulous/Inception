FROM debian:buster

ENV db1_name=inception
ENV db1_user=jsa
ENV db1_pwd=tls

RUN apt-get update -y && apt-get install mariadb-server -y

COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/


COPY ./tools/script.sh /


#CMD ["/script.sh"]