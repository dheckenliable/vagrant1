#!/bin/bash

apt-get update
apt-get install -y apache2
apt-get install -y libapache2-mod-php
apt-get install -y php7.0

#rm /etc/apache2/sites-enables/000-default.conf
#ln -s /vagrant/virtualhosts/default /etc/apache2/sites-enabled/000-default.conf

mv /var/www/html/web /var/www/html/web
ln -s /vagrant/web /var/www/html/web

mv /etc/apache2/sites-enabled/000-default.conf /var/www/html/web /etc/apache2/sites-enabled/000-default.conf.0
ln -s /vagrant/virtualhosts/default /etc/apache2/sites-enabled/000-default.conf
