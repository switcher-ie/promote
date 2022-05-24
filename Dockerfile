FROM alpine:3.15.4

RUN apk add bash curl docker git jq mailcap python2

COPY dependencies dependencies
RUN chmod +x dependencies && ./dependencies && rm dependencies

ADD entrypoint /entrypoint
ADD bin /bin
ADD deploymentLabeller.yaml /deploymentLabeller.yaml

ENTRYPOINT [ "/entrypoint" ]
