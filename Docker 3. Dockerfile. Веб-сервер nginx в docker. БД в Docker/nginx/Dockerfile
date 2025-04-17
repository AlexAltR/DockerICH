# Использовать образ NGINX в качестве базового
FROM nginx:1.27.4-alpine-slim

# Копировать наш файл index.html в директорию, где NGINX ищет свои статические файлы
COPY index.html /usr/share/nginx/html/

# Указываем, что контейнер будет слушать порт 80
EXPOSE 80

# Запускаем NGINX
CMD [ "nginx", "-g", "daemon off;" ]