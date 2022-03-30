FROM python:3.9-slim-bullseye

RUN useradd -m microblog

WORKDIR /home/microblog

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt && pip install gunicorn

COPY . ./
RUN chmod +x boot.sh && chown -R microblog:microblog ./

ENV FLASK_APP microblog.py

USER microblog

EXPOSE 5000

ENTRYPOINT ["./boot.sh"]
