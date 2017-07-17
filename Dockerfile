# test

FROM ubuntu:14.04
MAINTAINER peter

LABEL "perpose"="joins_study"
ENV WEBPATH /var/www/html

RUN apt-get update
RUN apt-get install apache2 -y

ADD test.html $WEBPATH
RUN ["ls","/var/www/html"]

COPY joins.html /var/www/html
RUN ["ls", "-la", "/var/www/html"]

#11
WORKDIR $WEBPATH
RUN ["pwd"]
RUN ["/bin/bash", "-c", "echo Joins >> test2.html"]

EXPOSE 80
VOLUME WEBPATH

CMD apachectl -DFOREGROUND