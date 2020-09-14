FROM dale432/akamai-jekyll-netstorage

LABEL "com.github.actions.name"="Akamai Jekyll Netstorage Action"
LABEL "com.github.actions.description"="CI action with Jekyll and Akamai Netstorage"
LABEL "com.github.actions.icon"="trash-2"
LABEL "com.github.actions.color"="orange"

LABEL version="0.1.0"
LABEL repository="https://github.com/jdmevo123/akamai-jekyll-netstorage-action"
LABEL homepage=""
LABEL maintainer="Dale Lenard <dale_lenard@outlook.com>"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
