#!/usr/bin/env bash

# Pastikan IPFS diinisialisasi (jika belum ada)
if [ ! -f /data/ipfs/config ]; then
  ipfs init
fi

# Memperbarui konfigurasi IPFS
# ipfs config --json Swarm.ConnMgr.LowWater 20
# ipfs config --json Swarm.ConnMgr.HighWater 40
# ipfs config Swarm.ConnMgr.GracePeriod "20s"

# Configurasi cors
ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '["http://192.168.33.101:5001", "http://localhost:3000", "http://127.0.0.1:5001", "https://webui.ipfs.io"]'
ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '["PUT", "POST"]'

# Mengaktifkan AutoRelay dan menonaktifkan Relay Hop
ipfs config --json Swarm.EnableAutoRelay true
ipfs config --json Swarm.EnableRelayHop false

# Menonaktifkan DHT (agar node tidak mengunduh dari node lain)
ipfs config Routing.Type none

# Menonaktifkan garbage collection sepenuhnya
# ipfs config Datastore.GCPeriod "0" # Menggunakan "0" (string) 
# Jika tidak berhasil, coba juga menggunakan nilai -1
# ipfs config Datastore.GCPeriod "-1"  # Coba ini jika sebelumnya tidak berhasil
