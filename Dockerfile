# Use the official ubuntu 22
FROM ubuntu:jammy

# check folder
RUN ls

# run download ipfs
RUN bash ./ipfs-download.sh