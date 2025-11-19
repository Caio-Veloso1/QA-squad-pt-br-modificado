FROM python:3.11.13-slim

ENV DEBIAN_FRONTEND=noninterative

RUN apt-get update && apt-get install -y \
    git wget curl build-essential \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

COPY requirements.txt .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

CMD [ "bash" ]