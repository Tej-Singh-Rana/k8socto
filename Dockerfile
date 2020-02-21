FROM centos
RUN yum install httpd python36 -y
RUN pip3 install mysql-connector-python

COPY index.html /var/www/html/index.html
COPY python.py  /var/www/cgi-bin/python.py
RUN chmod +x /var/www/cgi-bin/python.py
ENV MYSQL_HOST 172.20.0.3
EXPOSE 80
ENTRYPOINT httpd -DFOREGROUND
