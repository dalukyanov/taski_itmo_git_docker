# Данный Dockerfile предназначен для сборки и запуска приложения на основе Python
FROM python:3.10-alpine

# Устанавливаем переменную окружения PYTHONUNBUFFERED, чтобы отключить буферизацию вывода
ENV PYTHONUNBUFFERED=1

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /code

# Копируем все файлы приложения в контейнер
COPY . .

# Выполняем установку зависимостей, указанных в файле requirements.txt
RUN pip install -r requirements.txt

# Открываем порт 8000 для доступа к приложению
EXPOSE 8000

# Запускаем приложение командой python manage.py runserver 0.0.0.0:8000
CMD ["python","manage.py","runserver","0.0.0.0:8000"]