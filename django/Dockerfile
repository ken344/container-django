FROM python:3.12.0

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /work

COPY requirements.txt /work/

RUN pip install --upgrade pip\
    && pip install --upgrade setuptools\
    && pip install -r requirements.txt


