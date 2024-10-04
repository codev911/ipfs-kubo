# Menggunakan image IPFS Kubo terbaru
FROM ipfs/kubo:latest

# Menyalin configure_ipfs.sh ke dalam kontainer
COPY ./scripts/configure_ipfs.sh /scripts/configure_ipfs.sh

# Memberikan izin eksekusi pada script
RUN chmod +x /scripts/configure_ipfs.sh

# Menentukan entrypoint untuk menjalankan script konfigurasi dan daemon IPFS
ENTRYPOINT ["/bin/sh", "-c", "sh /scripts/configure_ipfs.sh && ipfs daemon --migrate=true"]
