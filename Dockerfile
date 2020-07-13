FROM alpine:latest

RUN apk add bash

ADD entrypoint /entrypoint
ADD deploy /deploy

ENTRYPOINT [ "/entrypoint" ]
