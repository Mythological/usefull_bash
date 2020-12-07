45 0 * * *       /usr/bin/bash /opt/wavtomp3.sh >/dev/null 2>&1


#!/bin/bash

#CURRENTYEAR=`date +%Y`

#CURRENTDATE=`date +"%Y-%m-%d %T"`

#DAY_YESTERDAY=$(date +%Y%m%d -d "1 day ago")

#3 Year ago
THREE_YEAR_AGO=$(date +%Y -d "3 year ago")
THREE_YEAR_AGO_MONTH=$(date +%m -d "3 year ago")
THREE_YEAR_AGO_DAY=$(date +%d -d "3 year ago")

#Yesterday
YEAR=$(date +%Y -d "1 day ago")
MONTH=$(date +%m -d "1 day ago")
DAY=$(date +%d -d "1 day ago")

#for day in {01..31}; do ls /var/spool/asterisk/monitor/2020/07/$day | sed s/....$//g | xargs -I RecordFile bash -x /etc/asterisk/scripts/mixmon-mp3-2.sh 2020 07 $day RecordFile wav; done
ls /var/spool/asterisk/monitor/${YEAR}/${MONTH}/${DAY} | sed s/....$//g | xargs -I RecordFile bash -x /etc/asterisk/scripts/mixmon-mp3-2.sh ${YEAR} ${MONTH} ${DAY} RecordFile wav

rm -rf /var/spool/asterisk/monitor/${THREE_YEAR_AGO}/${THREE_YEAR_AGO_MONTH}/${THREE_YEAR_AGO_DAY}/*

#rsync --bwlimit=1000 -axHvP /var/spool/asterisk/monitor/2021/ root@172.10.15.49:/var/spool/asterisk/monitor/2021
#sleep 30
#rsync --bwlimit=1000 -axHvP /var/spool/asterisk/monitor/2021/ root@172.10.15.45:/var/spool/asterisk/monitor/2021


~                                                                                                                     
