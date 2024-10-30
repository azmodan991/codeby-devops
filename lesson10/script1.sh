#!/bin/bash

# 1.создать папку, если ее нет
if [ ! -d ~/myfolder ]; then
    	mkdir -p ~/myfolder
fi

# 2.создать первый файл с приветствием и датой
echo "Hi, $USER!" >>  ~/myfolder/1.txt
echo "Today is $(date)" >> ~/myfolder/1.txt

# 3.создать пустой файл с правами 777
touch ~/myfolder/2.txt 
chmod 777 ~/myfolder/2.txt 

# 4.файл со строкой в 20 случайных символов
head /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c 20 > ~/myfolder/3.txt

# 5. создать два пустых файла
touch ~/myfolder/4.txt ~/myfolder/5.txt
