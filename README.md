# container-django
Build django and mysql with docker-compose.

djangoデフォルトのsqlite3ではなく、mysqlをContainerで起動し使うようにしている。

## preparation
- 「sample.env」を「.env」に変更
- 「.env」は「.gitignore」に登録する

## Run docker-compose
- docker-compose up

## Change settings in settings.py
- settings.pyのDATABASESを以下のように変更
```python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'sampledb',
        'USER': 'mysql_user',
        'PASSWORD': 'mysql_password',
        'HOST': 'mysql_db',
        'PORT': '3306',
    }
}
```
## Containerをリブートして設定反映
- python manage.py runserver

（ctl-Dで止めてからrunserverでも良さそう）

## Containerへログイン
- docker exec -it (contqainer ID or Name) bash

### 接続確認
- python manage.py dbshell
- (manage.pyのあるディレクトリで実行)

### superuser作成
- python manage.py createsuperuser
- (manage.pyのあるディレクトリで実行)

### 管理画面へアクセス
- http://localhost:8000/admin/
- ログインIDは、createsuperuserで作ったやつ

## アプリ作成
- python manage.py startapp polls
- (pollsはチュートリアルを参考)
- https://docs.djangoproject.com/ja/4.2/intro/tutorial01/
