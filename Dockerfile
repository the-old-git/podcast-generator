FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
  python3.10 \
  python3-pip \
  git

RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

RUN echo 'we are running some # of cool things'

RUN ls -la /

ENTRYPOINT ["/entrypoint.sh"]