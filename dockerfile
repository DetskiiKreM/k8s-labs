FROM python:3.12.0a7-slim-bullseye

WORKDIR /dz2/app

COPY . .

# Устанавливаем зависимости
RUN pip install --no-cache-dir click==7.1.2 Flask==1.1.2 itsdangerous==1.1.0 Jinja2==2.11.2 MarkupSafe==1.1.1 Werkzeug==1.0.1

EXPOSE 8080

CMD ["python", "app.py"]