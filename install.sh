#! /bin/bash
cd /
mkdir /NSCS
cd /NSCS
mkdir cron
cd cron
mkdir cron.d cron.m cron.w cron.h
apt install apache2 mysql-server mysql-client bind9 php tree curl unzip zip 
cd /var/www/
mkdir search social 
cd search
wget https://www.sphider.worldspaceflight.com/download/sphider-3.4.0-MB.zip
unzip sphider-3.4.0-MB.zip
cd /var/www/social
wget https://github.com/humhub/humhub/archive/master.zip
unzip *
cd humhub-master
cp -r * ..
rm -r *.zip humhub-master
echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list
cd /NSCS
wget -q -O- http://www.webmin.com/jcameron-key.asc | sudo apt-key add
sudo apt update 
sudo apt install webmin 
sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository universe
sudo apt-get update
sudo apt-get install certbot python3-certbot-apache
cd /etc/bind
cp db.127 db.192
cp db.local db.sturtz.ml

