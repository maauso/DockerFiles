FROM debian:bookworm-20220622-slim
ADD docker-entrypoint.sh /docker-entrypoint.sh
ENV SQUID_VERSION=squid-5.6
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y squid bash procps && \
    mkdir -p /var/cache/squid && \
    chmod +x /docker-entrypoint.sh
RUN useradd -ms /bin/bash squid
ENTRYPOINT [ "/docker-entrypoint.sh" ]
