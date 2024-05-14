FROM python:3.10-slim-bullseye
LABEL org.opencontainers.image.source="https://github.com/turnmanh/test-codespaces"

RUN apt update -y && \ 
    apt install -y pkg-config libhdf5-dev build-essential && \
    apt install -y gobjc gfortran gnat 

COPY . /tmp
WORKDIR /tmp
RUN pip install -r requirements.txt
