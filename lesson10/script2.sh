#!/bin/bash

# проверка директории на существование
# 1.создать папку, если ее нет
if [ ! -d ~/myfolder ]; then
	exit 1
fi

# Исправляем права второго файла с 777 на 664
chmod 664 ~/myfolder/2.txt

# Определяем пустые файлы и удаляем их
find ~/myfolder -type f -empty -delete

# Удаляем все строки кроме первой в остальных файлах
for file in ~/myfolder/*; do
    if [[ -f "$file" && "$file" != 2.txt ]]; then
        # Сохраняем первую строку файла и записываем обратно
        head -n 1 "$file" > "$file.tmp" && mv "$file.tmp" "$file"
    fi
done
