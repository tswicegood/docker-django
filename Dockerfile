FROM tswicegood/gunicorn
MAINTAINER Travis Swicegood
EXPOSE 8000

RUN /opt/anaconda/bin/conda install -c tswicegood --yes django

# Ensure that Python outputs everything that's printed inside
# the application rather than buffering it.
ENV PYTHONUNBUFFERED 1

CMD ["project.wsgi:application"]
