#!/bin/bash
DATE=$(date +%F_%H-%M-%S)
mysqldump -u root -p'root' test_db > /opt/mysql_backup/test_db_backup_$DATE.sql
mysqldump -u root -p'root' test_db1 > /opt/mysql_backup/test_db1_backup_$DATE.sql
