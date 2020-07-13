FROM alpine:latest

RUN apk add bash

ADD deploy .

ENTRYPOINT [ "./deploy" ]