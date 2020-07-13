FROM alpine:latest

RUN apk add bash

ADD bin deploy ./

ENTRYPOINT [ "/deploy" ]
