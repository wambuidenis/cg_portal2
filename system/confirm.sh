#!/bin/bash
#This script run every 10 seconds
#get mails && notify && renotify
#/home/dev/support
while (sleep 10 && php /home/dev/support/mail-capture/cron_notify_confirmations.php) &
do
  wait $!
done
