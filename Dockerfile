FROM python:3.9 
LABEL maintainer="diodonfrost <diodon.frost@diodonfrost.me>"

WORKDIR /home

COPY requirements.txt /home/requirements.txt
RUN pip install -r requirements.txt

COPY ./ /home/

WORKDIR /home/douili

CMD ["gunicorn", "-b :8000", "douili.wsgi"]
