FROM ipfs/kubo:latest
COPY ./scripts/configure_ipfs.sh /scripts/configure_ipfs.sh
RUN chmod +x /scripts/configure_ipfs.sh
CMD ["./scripts/configure_ipfs.sh"]
