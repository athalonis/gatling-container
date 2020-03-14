FROM alpine:edge

RUN \
    echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk add --update gatling@testing

VOLUME ["/usr/share/www"]

ENV GATLING_PARAMETER "-V -D -F -S -t -L -u gatling -c /usr/share/www/ "

COPY entrypoint.sh /
CMD ["./entrypoint.sh"]
