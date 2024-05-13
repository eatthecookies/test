# Используем базовый образ с Node.js
FROM node:16-alpine as build

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем package.json и package-lock.json и устанавливаем зависимости
COPY ./package*.json ./
RUN npm install

# Копируем все файлы из frontend и собираем приложение React
COPY . .
RUN npm run build

