FROM alpine:latest

RUN apk add bash

ADD entrypoint /
ADD deploy /

ENTRYPOINT [ "/entrypoint" ]
