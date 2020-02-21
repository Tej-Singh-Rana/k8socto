FROM mysql/mysql-server:latest
ENV MYSQL_DATABASE register
ENV MYSQL_USER root
ENV MYSQL_ROOT_PASSWORD redhat123 
COPY ./script /docker-entrypoint-initdb.d/
