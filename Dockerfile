FROM alpine:3.13
MAINTAINER horky@d3s.mff.cuni.cz
LABEL maintainer="horky@d3s.mff.cuni.cz"

COPY nswi177-task-volume /usr/local/bin/

RUN apk add git \
    && sed 's:#!/bin/sh:#!/root/.asdf/sh:' -i /usr/local/bin//nswi177-task-volume \
    && mkdir /root/.asdf/ \
    && cp /bin/busybox /root/.asdf/sh \
    && rm -f /bin/ash \
    && rm -f /bin/sh
CMD echo "Huh?"
