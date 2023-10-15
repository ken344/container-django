FROM python:3.12.0

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /work
COPY requirements.txt /work

RUN pip install --upgrade pip\
    && pip install --upgrade setuptools\
    && pip install -r requirements.txt


# scriptをコピー
COPY ./script/make_django_project.sh /work

# 実行権限を付与
RUN chmod +x ./make_django_project.sh

# シェルスクリプト実行
ENTRYPOINT ["./make_django_project.sh"]

