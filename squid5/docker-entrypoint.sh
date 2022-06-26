#!/bin/sh
# ----------------------------------------------------------------------------
# entrypoint for squid container
# ----------------------------------------------------------------------------
set -e
echo "Staring squid [${SQUID_VERSION}]"
chown -R proxy:proxy /var/cache/squid
/usr/sbin/squid -N
