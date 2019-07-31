FROM centos:latest

LABEL Anand Reddy <githubanand@gmail.com>

RUN yum -y update && yum -y install httpd && rm -rf /var/www/html/*

WORKDIR /var/www/html

COPY . /var/www/html

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/httpd", "-D", "FOREGROUND"]
