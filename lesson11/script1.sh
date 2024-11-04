#!/bin/bash
projectdir=~/myfolder/								# Путь к рабочей директории
BADDIR=65 									# Код ошибки, если такой директории не существует

if ! [ -d $projectdir ]; then							# Если рабочей директории не существует, то создаем ее
    	mkdir -p "$projectdir"
	echo "Рабочая директория по пути $projectdir была создана"
else										# Если директория существует, то удалим ее, чтобы очистить
	rm -rf $projectdir
	mkdir -p "$projectdir"
	echo "Рабочая директория по пути $projectdir была создана"
fi

echo -e "Hi, $USER!\nToday is $(date)" > "$projectdir"/1.txt			# Cоздать первый файл с приветствием и датой

touch $projectdir/2.txt								# Cоздать пустой файл с правами 777
chmod 777 $projectdir/2.txt

head /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c 20 > $projectdir/3.txt		# Создать файл со строкой в 20 случайных символов

touch $projectdir/4.txt $projectdir/5.txt					# Создать два пустых файла

exit 0
