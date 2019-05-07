FROM ubuntu:18.04
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install apache2 -y


ADD assets /var/www/html/assets
ADD favicon.ico /var/www/html/favicon.ico
ADD index.html /var/www/html/index.html
ADD robots.txt /var/www/html/robots.txt

EXPOSE 443
EXPOSE 80
EXPOSE 8080
EXPOSE 8081
EXPOSE 8082

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]