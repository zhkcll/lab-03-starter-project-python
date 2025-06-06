# Базовий образ із Python 3.10 на Debian Slim
FROM python:3.10-slim

# Створення робочої директорії
WORKDIR /app

# Копіюємо файл залежностей окремо, щоб кешувати pip install
COPY requirements/requirements.txt .

# Встановлення залежностей без кешу
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо увесь проєкт у контейнер
COPY . .

# Команда запуску FastAPI-серверу
CMD ["uvicorn", "spaceship.app:app", "--host", "0.0.0.0", "--port", "8000"]
