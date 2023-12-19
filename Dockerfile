# Use the official ubuntu 22
FROM ubuntu:jammy

# Install wget
RUN apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

# check folder
RUN cd home

# check folder
RUN ls

# run download ipfs
RUN bash ./ipfs-download.sh