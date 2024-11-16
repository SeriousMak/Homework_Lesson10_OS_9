#!/bin/bash

# Получение параметров

read -p "Введите файл, который нужно изменить:" file_name

echo $file_name

read -p "Введите нужное расширение:" new_ext

echo $new_ext

# Извлечение имени файла без расширения и новое имя
new_file_name="${file_name%.*}.${new_ext}"

# Добавление файла new_file_name с содержимым File_name

cp "$file_name" "$new_file_name"

echo "Создан файл с новым крутым расширением $new_file_name, также сохранился старый $file_name"