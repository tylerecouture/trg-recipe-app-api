FROM python:3.7-slim
LABEL maintainer="tylerecouture"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser --disabled-password appuser
USER appuser





