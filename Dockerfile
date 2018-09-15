FROM ubuntu:latest

RUN apt-get update -y \
  && apt-get install -y --no-install-recommends wget tar gzip curl git jq awscli python python-pip \
  && pip install pygments \
  && rm -rf /var/lib/apt/lists/*

RUN aws configure set preview.cloudfront true \
  && wget -q https://github.com/spf13/hugo/releases/download/v0.48/hugo_0.48_Linux-64bit.deb \
  && dpkg -i hugo*.deb
