# Используем базовый образ Python
FROM python:3.9-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы и устанавливаем зависимости
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Копируем код приложения
COPY app.py .

# Открываем порт и запускаем приложение
EXPOSE 5000
CMD ["python", "app.py"]