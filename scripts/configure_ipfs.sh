#!/usr/bin/env bash

# # Pastikan IPFS diinisialisasi (jika belum ada)
# if [ ! -f /data/ipfs/config ]; then
#   ipfs init
# fi

# # Memperbarui konfigurasi IPFS
# ipfs config --json Swarm.ConnMgr.LowWater 20
# ipfs config --json Swarm.ConnMgr.HighWater 40
# ipfs config Swarm.ConnMgr.GracePeriod "20s"

# Konfigurasi CORS untuk API
ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '["*"]'
ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '["PUT", "POST"]'

# Mengaktifkan AutoRelay dan menonaktifkan Relay Hop
ipfs config --json Swarm.EnableAutoRelay true
ipfs config --json Swarm.EnableRelayHop false

# # Menonaktifkan DHT (agar node tidak mengunduh dari node lain)
# ipfs config Routing.Type none

# # Menonaktifkan garbage collection sepenuhnya
# ipfs config Datastore.GCPeriod "-1"  # Menggunakan "-1" sebagai nilai
