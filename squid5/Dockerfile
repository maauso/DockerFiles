FROM debian:bookworm-20220622-slim
COPY docker-entrypoint.sh /docker-entrypoint.sh
ENV SQUID_VERSION=squid-5.6
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install --no-install-recommends -y squid bash procps && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /var/cache/squid && \
    chmod +x /docker-entrypoint.sh && \
    useradd -ms /bin/bash squid
ENTRYPOINT [ "/docker-entrypoint.sh" ]
