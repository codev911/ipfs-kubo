# Gunakan image dasar dari IPFS Kubo
FROM ipfs/kubo:latest

# Set environment variables
ENV IPFS_PROFILE=server
ENV IPFS_ENABLE_RELAY=true
ENV IPFS_AUTO_RELAY=true
ENV IPFS_DISABLE_GC=false

# Salin entrypoint.sh ke dalam container
COPY entrypoint.sh /entrypoint.sh

# Berikan hak akses eksekusi pada skrip
RUN chmod +x /entrypoint.sh

# Tentukan skrip sebagai entrypoint
ENTRYPOINT ["/entrypoint.sh"]

# Deklarasikan volume yang digunakan
VOLUME ["/data/ipfs", "/export"]
