FROM alpine:3.10

RUN chmod +x entrypoint.sh && apk add --no-cache git

COPY push-generated-file.sh /push-generated-file.sh

ENTRYPOINT ["/push-generated-file.sh"]
