FROM armhf/alpine

RUN apk --update upgrade && \
  apk add exim clamav spamassassin && \
  rm -rf /var/cache/apk/*


CMD ["/usr/bin/exim"]
