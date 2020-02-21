FROM mysql
ENV MYSQL_DATABASE register

COPY ./script /docker-entrypoint-initdb.d/
EXPOSE 3306 33060
CMD ["mysqld"]
