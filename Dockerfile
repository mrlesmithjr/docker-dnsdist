FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends dnsdist supervisor && \
    apt-get -y clean && \
    apt-get -y autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV DNS_BACKENDS="10.0.101.101 10.0.101.101"

COPY dnsdist.conf /etc/supervisor/conf.d/

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 53 53/udp
