FROM alpine:3.12

COPY promote /promote

ENTRYPOINT ["/promote"]
