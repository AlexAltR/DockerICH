#!/bin/sh
# Указываем, что скрипт будет выполнен через интерпретатор sh

URL="https://api.frankfurter.app/latest" # Переменная URL - адрес API, который вернет курс Биткойна

OUTPUT_FILE="/data/price.json"    # Переменная - путь куда будет сохранен результат запроса

curl -o $OUTPUT_FILE $URL # Команда curl скачивает данные с указанного URL и сохраняет их в файл

echo "Data has benn saved to $OUTPUT_FILE" # Выводит сообщение об успешном сохранении данных в файл