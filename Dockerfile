FROM jupyter/base-notebook:python-3.10
LABEL org.opencontainers.image.source="https://github.com/turnmanh/test-codespaces"


RUN pip install --upgrade pip && \
    pip install sbi
