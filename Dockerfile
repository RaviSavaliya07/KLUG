FROM php:7.2-apache

RUN apt-get update && apt-get install -y


RUN mkdir /app \
 && mkdir /app/demo \
 && mkdir /app/demo/www

COPY KLUG/ /app/demo/www/

RUN cp -r /app/demo/www/* /var/www/html/.