#!/usr/bin/env bash
set -xeu

cp -vf /vagrant/files/info.php /var/www/html/info.php
cp -vf /vagrant/files/info.php /var/www/html/test.php

chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

systemctl enable --now apache2
systemctl enable --now mariadb
