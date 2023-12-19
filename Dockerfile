# Use the official ubuntu 22
FROM ubuntu:jammy

# run download ipfs
RUN bash ./ipfs-download.sh