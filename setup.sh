#!/bin/bash
apt install ruby-dev
gem install wpscan
touch /var/spool/cron/root
echo "58 15 28 * * ./main.sh" >> /var/spool/cron/root
