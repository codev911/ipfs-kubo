#!/bin/sh

# Cek apakah IPFS sudah diinisialisasi
if [ ! -f /data/ipfs/config ]; then
  echo "Initializing IPFS..."
  ipfs init

  # Terapkan konfigurasi hanya setelah inisialisasi
  echo "Confiuring CORS IPFS..."
  ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '["*"]'
  ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '["PUT", "POST"]'
  echo "Configuring Auto Relay IPFS..."
  ipfs config --json Swarm.EnableRelayHop false
  ipfs config --json Swarm.EnableAutoRelay true
fi

# Jalankan IPFS daemon setelah inisialisasi dan konfigurasi selesai
echo "Starting IPFS daemon..."
ipfs daemon
