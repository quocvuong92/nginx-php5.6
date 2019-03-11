FROM navidonskis/nginx-php5.6:latest

MAINTAINER Vuong Hoang <vuonghq3@fpt.com.vn>

WORKDIR /var/www

RUN mkdir -p /etc/nginx/conf.d/ssl/ /etc/nginx/conf.d/crossdomain/ && rm -rf /etc/supervisor/ 
COPY ./configs/nginx.conf  /etc/nginx/nginx.conf
# COPY ./configs/app.conf   /etc/nginx/conf.d/app.conf
COPY ./configs/supervisord.conf /etc/supervisord.conf
COPY ./configs/php.ini     /etc/php/5.6/fpm/php.ini
COPY ./configs/www.conf    /etc/php/5.6/fpm/pool.d/www.conf
COPY ./configs/cli.php.ini /etc/php/5.6/cli/php.ini


EXPOSE 80 443 8080
