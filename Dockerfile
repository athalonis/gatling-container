FROM alpine:edge

LABEL maintainer="Benjamin Baessler <docker-gatling@xunit.de>"

RUN \
    echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk add --update gatling@testing

VOLUME ["/usr/share/www"]

ENV GATLING_PARAMETER "-V -D -F -S -t -L -u gatling -c /usr/share/www/ "

EXPOSE 80

COPY entrypoint.sh /
CMD ["./entrypoint.sh"]
