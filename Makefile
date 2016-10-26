clean:
	find . -name "*.pyc" -exec rm -rf {} \;

run: clean
	python3 manage.py runserver 0.0.0.0:8000 --settings=mysite.settings

migrate:
	python3 manage.py migrate --settings=mysite.settings

migrations:
	python3 manage.py makemigrations --settings=mysite.settings

install:
	pip install -r requirements.txt
	make migrate

user:
	python3 manage.py createsuperuser --settings=mysite.settings

shell:
	python3 manage.py shell --settings=mysite.settings

