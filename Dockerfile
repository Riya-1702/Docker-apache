FROM ubuntu:latest

RUN apt update && \
    apt install -y apache2 apache2-utils && \
    echo "ServerName localhost" >> /etc/apache2/apache2.conf && \
    apt clean

COPY index.html /var/www/html/index.html

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
