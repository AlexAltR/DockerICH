# Используем официальный образ Node.js
FROM node:23-slim

WORKDIR /app

# Копируем package.json и package-lock.json для установки зависимостей
COPY package.json package-lock.json ./

# Удаляем старые зависимости (если они есть)
RUN rm -rf node_modules && rm -f package-lock.json

# Устанавливаем все зависимости
RUN npm install --legacy-peer-deps

# Копируем весь исходный код приложения
COPY . .

# Собираем проект
RUN npm run build

# Открываем порт для приложения
EXPOSE 5173

# Команда для запуска приложения в продакшн
CMD ["npm", "run", "preview"]
