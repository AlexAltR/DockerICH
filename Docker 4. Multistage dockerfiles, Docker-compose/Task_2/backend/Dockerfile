# Используем официальный образ Node.js
FROM node:23-slim

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Устанавливаем curl и загружаем wait-for-it для ожидания подключения к базе данных
RUN apt-get update && apt-get install -y curl && \
    curl -o /usr/local/bin/wait-for-it https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh && \
    chmod +x /usr/local/bin/wait-for-it

# Копируем package.json и package-lock.json в контейнер
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install --production && npm install -g nodemon

# Копируем остальные файлы приложения в контейнер
COPY . .

# Открываем порт для backend сервиса
EXPOSE 3002

# Запускаем приложение с ожиданием базы данных
CMD ["wait-for-it", "db:3306", "--", "npm", "run", "start"]
