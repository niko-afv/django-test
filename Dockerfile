FROM python:3.7-alpine
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev && pip install -r requirements.txt
COPY . /code/
