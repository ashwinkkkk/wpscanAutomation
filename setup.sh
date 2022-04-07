#!/bin/bash
cp ./ssmtp.conf /etc/ssmtp/ssmtp.conf
cp ./revaliases /etc/ssmtp/revaliases
apt-get install ruby-dev
apt-get install sendmail
gem install wpscan
touch /var/spool/cron/root
echo "58 15 28 * * ./main.sh" >> /var/spool/cron/root
