#! /bin/bash
cd /
mkdir /NSCS
cd /NSCS
mkdir install
cd install
wget https://raw.githubusercontent.com/nsturtz2/server-install/master/install2.sh
chmod 777 *
cd /NSCS
mkdir cron
cd cron
mkdir cron.d cron.m cron.w cron.h
/NSCS/install/install2.sh
