# docker-django
Simple container for running [django][] 1.6.5.


## Usage
This runs Django 1.6.5 via [gunicorn][] using the [gunicorn container][].  It
defaults to running an application called `project.wsgi:application` which
happens to be the default generated by `django-admin.py startproject project`.


```bash
docker run --publish-all -v /path/to/django-project:/app tswicegood/django
```

Note, this exposes port 8000.

[django]: https://www.djangoproject.com/
[gunicorn]: http://gunicorn.org/
[gunicorn container]: https://registry.hub.docker.com/u/tswicegood/gunicorn/
