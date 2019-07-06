FROM python:3.7-slim
LABEL maintainer="tylerecouture"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt
RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN groupadd -g 999 appuser && \
    useradd -r -u 999 -g appuser appuser
USER appuser

