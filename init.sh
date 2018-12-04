#!/bin/sh
# Run as root please
# Put front in /usr/share/nginx/novus
# Put back in /usr/share/nginx/back

# Add download and untar here
# TODO

# nginx root conf
echo "/tmp/mytrala1"
cp nginx_root_conf.conf /etc/nginx/nginx.conf
echo "/tmp/mytrala2"

# nginx novus conf
#rm /etc/nginx/conf.d/default.conf
#touch /tmp/mytrala3
cp novus.conf /etc/nginx/conf.d/novus.conf
echo "/tmp/mytrala3"
cp back.ini /etc/uwsgi/apps-enabled/back.ini
echo "/tmp/mytrala4"

# socket file
touch /tmp/back.sock
echo "/tmp/mytrala5"
chown www-data:www-data /tmp/back.sock
echo "/tmp/mytrala6"
chmod 770 /tmp/back.sock
echo "/tmp/mytrala7"

# Restart services
service nginx restart
service uwsgi restart
