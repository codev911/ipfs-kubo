#!/bin/bash -x

OS=$(uname -m)

if [ $OS = 'x86_64' ]; then
    echo "Downloading ipfs/kubo 64 bit linux"
    wget https://github.com/ipfs/kubo/releases/download/v0.25.0/kubo_v0.25.0_linux-amd64.tar.gz
    echo "Downloaded"
else
    echo "Downloading ipfs/kubo 32 bit linux"
    wget https://github.com/ipfs/kubo/releases/download/v0.25.0/kubo_v0.25.0_linux-386.tar.gz
    echo "Downloaded"
fi