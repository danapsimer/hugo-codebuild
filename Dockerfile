FROM ubuntu:17.04

RUN apt-get update -y \
  && apt-get install -y --no-install-recommends wget tar gzip curl git awscli \
  && rm -rf /var/lib/apt/lists/*

RUN aws configure set preview.cloudfront true \
  && wget -q https://github.com/spf13/hugo/releases/download/v0.21/hugo_0.21_Linux-64bit.deb \
  && dpkg -i hugo*.deb
