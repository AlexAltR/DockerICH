# Используем образ Debian в качестве базового образа
FROM debian:latest

# Установить curl
RUN apt-get update && apt-get install -y curl

# Копируем файл fetch_data.sh в контейнер
COPY fetch_data.sh /usr/local/bin/fetch_data.sh

# Устанавливаем права на выполнение для fetch_data.sh
RUN chmod +x /usr/local/bin/fetch_data.sh

# Устанавливаем рабочую директорию
WORKDIR /app

# Устанавливаем переменные окружения для URL, OUTPUT_FILE
# ENV URL=

# Создаем директирорию для хранения данных (том)
VOLUME [ "/data" ]

# Запускаем fetch_data.sh при запуске контейнера
CMD [ "/usr/local/bin/fetch_data.sh" ]