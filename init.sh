#!/bin/sh
# Run as root please
# Put front in /usr/share/nginx/novus
# Put back in /usr/share/nginx/back

# Add download and untar here
# TODO

# nginx root conf
touch /tmp/mytrala1
cp nginx_root_conf.conf /etc/nginx/nginx.conf
touch /tmp/mytrala2

# nginx novus conf
rm /etc/nginx/conf.d/default.conf
touch /tmp/mytrala3
cp novus.conf /etc/nginx/conf.d/novus.conf
touch /tmp/mytrala4
cp back.ini /etc/uwsgi/apps-enabled/back.ini
touch /tmp/mytrala5

# socket file
touch /tmp/back.sock
touch /tmp/mytrala6
chown www-data:www-data /tmp/back.sock
touch /tmp/mytrala7
chmod 770 /tmp/back.sock
touch /tmp/mytrala8

# Restart services
service nginx restart
service uwsgi restart