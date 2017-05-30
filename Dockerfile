FROM armhf/alpine

COPY exim.conf /etc/exim/exim.conf

RUN sed -i -e 's/v3.5/v3.6/g' /etc/apk/repositories && \
  apk --update upgrade && \
  apk add exim clamav spamassassin && \
  rm -rf /var/cache/apk/*

CMD ["/usr/sbin/exim"]
