#!/bin/sh

PROJECT_NAME="myproject"
DJANGO_DIR="/django_project"

# ディレクトリが無ければ作成
[ ! -d ${DJANGO_DIR} ] && mkdir ${DJANGO_DIR}
# ディレクトリを移動。できなければエラー
cd ${DJANGO_DIR} || { echo "cd command Failure"; exit 1; }

# djangoのプロジェクト作成
if [ ! -d ${PROJECT_NAME} ] ; then
    django-admin startproject ${PROJECT_NAME} .
    # python manage.py migrate
fi

# projectのファイル群が生成されるまでどうも時間が掛かってるっぽいので、ちょっと待つ。
while [ ! -e "manage.py" ]
do
  sleep 1
done

#


# python python manage.py migrate
exec python manage.py runserver 0.0.0.0:8000
