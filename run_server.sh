#!/bin/sh

if [ ! -f '/var/data/db.sqlite3' ]; then cp pypi-site/djangopypi2/db.sqlite3 /var/data/; fi
ln -sf /var/data/db.sqlite3 pypi-site/djangopypi2/db.sqlite3
chown www-data:www-data -R pypi-site/djangopypi2
chown www-data:www-data -R /var/data
supervisord -n
