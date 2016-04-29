FROM debian:jessie
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN apt-get update && apt-get install -y curl openssl vim-common &&\
  rm -rf /var/lib/apt/lists/* &&\
  mkdir /le &&\
  curl -s "https://github.com/Neilpang/acme.sh/blob/master/acme.sh" > /usr/bin/local/acme.sh &&\
  chmod +x /usr/bin/local/acme.sh

ENTRYPOINT ["acme.sh"]
