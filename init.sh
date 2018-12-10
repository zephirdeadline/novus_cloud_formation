#!/bin/sh
# Run as root please
# Put front in /usr/share/nginx/novus
# Put back in /usr/share/nginx/back

# Add download and untar here
# TODO

# nginx root conf
cp nginx_root_conf.conf /etc/nginx/nginx.conf

# nginx novus conf
#rm /etc/nginx/conf.d/default.conf
cp novus.conf /etc/nginx/conf.d/novus.conf
cp back.ini /etc/nginx/