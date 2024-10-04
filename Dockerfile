FROM ipfs/kubo:latest
COPY ./scripts/configure_ipfs.sh /scripts/configure_ipfs.sh
RUN chmod +x /scripts/configure_ipfs.sh
CMD ["/bin/sh", "-c", "./scripts/configure_ipfs.sh"]
