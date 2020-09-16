FROM dale432/akamai-jekyll-netstorage:latest

LABEL version="0.1.0"
LABEL repository="https://github.com/jdmevo123/akamai-jekyll-netstorage-action"
LABEL maintainer="Dale Lenard <dale_lenard@outlook.com>"

RUN akamai upgrade
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
