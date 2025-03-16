FROM python:3.12.7-bookworm

WORKDIR /app

COPY . /app

RUN pip install poetry

RUN poetry lock --no-update

RUN poetry install --no-root

CMD ["sh", "start.sh"]