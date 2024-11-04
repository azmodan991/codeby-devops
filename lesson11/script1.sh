#!/bin/bash
projectdir=~/myfolder/	#Путь к рабочей директории
BADDIR=65 		#Код ошибки, если такой директории не существует

# 1. Создаем рабочую директорию, если ее нет
if ! [ -d $projectdir ]; then
    	mkdir -p "$projectdir"
	echo "Рабочая директория по пути $projectdir была создана"
else
	rm -rf $projectdir # Если директория существует, то удалим ее, чтобы очистить
	mkdir -p "$projectdir"
	echo "Рабочая директория по пути $projectdir была создана"
fi

# 2.создать первый файл с приветствием и датой
echo -e "Hi, $USER!\nToday is $(date)" > "$projectdir"/1.txt

# 3.создать пустой файл с правами 777
touch $projectdir/2.txt 
chmod 777 $projectdir/2.txt 

# 4.Создать файл со строкой в 20 случайных символов
head /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c 20 > $projectdir/3.txt

# 5. Создать два пустых файла
touch $projectdir/4.txt $projectdir/5.txt

