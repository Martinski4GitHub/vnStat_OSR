#!/bin/sh
# ver=1.0.0
# This script is used to create the daily/weekly/monthly vnstat usage for the Vnstat on Merlin script and UI - by dev_null at snbforums
echo > /home/root/vnstat.txt
echo "Vnstats as of:" >> /home/root/vnstat.txt
echo >> /home/root/vnstat.txt
date >> /home/root/vnstat.txt
# echo "...Which is (vnstat time in UTC)..." >> /home/root/vnstat.txt
# date -u >> /home/root/vnstat.txt
# echo >> /home/root/vnstat.txt
/opt/bin/vnstat -m >> /home/root/vnstat.txt
/opt/bin/vnstat -w >> /home/root/vnstat.txt
/opt/bin/vnstat -d >> /home/root/vnstat.txt
echo >> /home/root/vnstat.txt
cat /home/root/vnstat.txt
# cat /home/root/vnstat.txt | convert -font DejaVu-Sans-Mono -channel RGB -negate label:@- /tmp/var/wwwext/vnstat/vnstat.png
logger -s -t vnstat_totals summary generated
