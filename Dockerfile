FROM python:latest

ARG cache_dir="/tmp/cache"

WORKDIR /app

COPY requirements.txt .

RUN --mount=type=cache,target=${cache_dir} \
  pip install --cache-dir ${cache_dir} -r requirements.txt

COPY main.py main.py

CMD [ "python", "main.py" ]
