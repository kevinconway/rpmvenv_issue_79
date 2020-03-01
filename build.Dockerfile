FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install --yes python-pip rpm && \
    pip install -U rpmvenv virtualenv

ENTRYPOINT [ "rpmvenv", "--verbose", "/build/conf.json" ]
