cat /etc/asterisk/res_odbc_additional.conf

5 4 01 * *        mysql -ufreepbxuser -pPASSWORD asteriskcdrdb < /opt/Delete_Old_CDR_3year.sql >/dev/null 2>&1


use asteriskcdrdb;
delete from cdr where calldate < DATE_SUB(NOW(), INTERVAL 3 YEAR);
delete from cel where eventtime < DATE_SUB(NOW(), INTERVAL 3 YEAR);
exit         
