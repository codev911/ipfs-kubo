FROM ipfs/kubo:latest
COPY ./scripts/configure_ipfs.sh /scripts/configure_ipfs.sh
RUN chmod +x /scripts/configure_ipfs.sh
ENTRYPOINT ["/bin/sh", "-c", "sh /scripts/configure_ipfs.sh"]
