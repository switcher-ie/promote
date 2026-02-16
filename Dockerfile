FROM alpine:3.21

RUN apk add bash curl docker git jq mailcap python3 py3-pip

COPY dependencies dependencies
RUN chmod +x dependencies && ./dependencies && rm dependencies

ADD entrypoint /entrypoint
ADD bin /bin
ADD deploymentLabeller.yaml /deploymentLabeller.yaml

ENTRYPOINT [ "/entrypoint" ]
