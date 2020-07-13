FROM alpine:latest

RUN apk add bash git docker

ADD entrypoint /entrypoint
ADD deploy /deploy

CMD [ "/entrypoint" ]
