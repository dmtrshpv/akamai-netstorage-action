FROM dale432/akamai-jekyll-netstorage:latest

LABEL version="0.1.0"
LABEL repository="https://github.com/dmtrshpv/akamai-netstorage-action"
LABEL maintainer="Dale Lenard <dale_lenard@outlook.com>"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
