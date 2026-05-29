FROM ubuntu: latest

RUN apt-get update && apt-get install -y \
    pyton3.10 \ \
    pyton3-pip \
    git

RUN pip3 isntall PyYAML

COPY feed.py /usr/bin/feed1.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]