FROM python:3.10

WORKDIR /data

COPY . .

RUN pip install django==3.2

EXPOSE 8000

CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
