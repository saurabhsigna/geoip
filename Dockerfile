FROM ubuntu:22.04

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update \
    && apt-get install -y nginx libnginx-mod-http-geoip geoip-database


COPY nginx.conf /etc/nginx/nginx.conf
COPY geoip.conf /etc/nginx/conf.d/geoip.conf
COPY default.conf /etc/nginx/sites-available/default



CMD ["nginx", "-g", "daemon off;"]