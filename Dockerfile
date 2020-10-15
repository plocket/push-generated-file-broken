FROM alpine:3.10

COPY push-generated-file.sh /push-generated-file.sh

RUN chmod +x push-generated-file.sh && \
    apk add --no-cache git

ENTRYPOINT ["/push-generated-file.sh"]
