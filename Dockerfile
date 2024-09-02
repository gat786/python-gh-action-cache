FROM python:latest

ARG cache_dir="/tmp/cache"

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY main.py main.py

CMD [ "python", "main.py" ]
