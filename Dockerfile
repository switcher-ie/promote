FROM alpine:latest

RUN apk add bash git

ADD entrypoint /entrypoint
ADD deploy /deploy

ENTRYPOINT [ "/entrypoint" ]
