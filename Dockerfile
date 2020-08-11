FROM alpine:latest

RUN apk add bash curl docker git jq mailcap python2 

COPY dependencies dependencies
RUN chmod +x dependencies && ./dependencies && rm dependencies

ADD entrypoint /entrypoint
ADD bin /bin

ENTRYPOINT [ "/entrypoint" ]
