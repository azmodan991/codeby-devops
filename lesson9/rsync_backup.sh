#!/bin/bash
rsync -avz /opt/mysql_backup/ backup@172.25.200.148::mysql
