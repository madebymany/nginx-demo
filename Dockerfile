FROM quay.io/madebymany/build-bases:xenial
RUN apt-get update -qq
RUN apt-get install -y nginx
RUN rm /etc/nginx/sites-available/*
ADD nginx.conf /etc/nginx/nginx.conf
ADD index.html /www/data/index.html
CMD nginx