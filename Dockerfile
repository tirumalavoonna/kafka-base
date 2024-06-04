FROM python:3.11.9-slim-bookworm                                                                                                                                           

COPY requirements.txt requirements.txt 

RUN set -eux; \
    apt-get update; \
    apt-get upgrade -y; \
    apt-get install -y --no-install-recommends \
        curl \
        wget \
        telnet; \
    pip install --upgrade pip --no-cache-dir; \ 
    pip install -r requirements.txt --no-cache-dir \
