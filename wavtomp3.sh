45 0 * * *       /usr/bin/bash /opt/wavtomp3.sh >/dev/null 2>&1


#!/bin/bash

##CURRENTYEAR=`date +%Y`

##CURRENTDATE=`date +"%Y-%m-%d %T"`

##DAY_YESTERDAY=$(date +%Y%m%d -d "1 day ago")

#Yesterday
YEAR=$(date +%Y -d "1 day ago")
MONTH=$(date +%m -d "1 day ago")
DAY=$(date +%d -d "1 day ago")

#####for day in {01..31}; do ls /var/spool/asterisk/monitor/2020/07/$day | sed s/....$//g | xargs -I RecordFile bash -x /etc/asterisk/scripts/mixmon-mp3-2.sh 2020 07 $day RecordFile wav; done
#ls /var/spool/asterisk/monitor/${YEAR}/${MONTH}/${DAY} | sed s/....$//g | xargs -I RecordFile bash -x /etc/asterisk/scripts/mixmon-mp3-2.sh ${YEAR} ${MONTH} ${DAY} RecordFile wav


#rsync --bwlimit=1000 -axHvP /var/spool/asterisk/monitor/ root@172.10.19.249:/var/spool/asterisk/monitor

#rsync --bwlimit=1000 -axHvP /var/spool/asterisk/monitor/ root@172.10.19.245:/var/spool/asterisk/monitor

~                                                                                                                     
