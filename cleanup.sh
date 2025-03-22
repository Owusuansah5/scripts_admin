#!/bin/bash

##check disk usage
sudo df -h | awk '$5 > 80 {print}'


##Automate backups with Rsync
sudo rsync -av --delete /var/log /backup/


##Schedule backups with a cron job
crontab -e
0 2 * * * rsync -av /data /backup


##Automate disk cleanup
sudo find /var/log -type f -mtime +30 -delete

##Archiving logs more than 7 days
sudo find /var/log -type f -mtime +7 -exec tar -czf {}.tar.gz {} \; -exec rm {} \;
echo "Logs older than 7 days have been archived."
