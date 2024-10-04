#!/usr/bin/env bash

# Periksa apakah IPFS sudah diinisialisasi sebelumnya
if [ ! -f /data/ipfs/config ]; then
  echo "Initializing IPFS for the first time..."
  ipfs init
else
  echo "IPFS is already initialized, skipping init."
fi

# Update IPFS configuration
ipfs config --json Swarm.ConnMgr.LowWater 20
ipfs config --json Swarm.ConnMgr.HighWater 40
ipfs config Swarm.ConnMgr.GracePeriod "20s"

# Enable AutoRelay and disable Relay Hop
ipfs config --json Swarm.EnableAutoRelay true
ipfs config --json Swarm.EnableRelayHop false

# Disable the DHT (so the node doesn't download from other nodes)
ipfs config Routing.Type none

# Optionally, set up API to only accept requests from localhost (security)
# ipfs config Addresses.API /ip4/127.0.0.1/tcp/5001

# Disable garbage collection entirely
ipfs config --json Datastore.GCPeriod "0"
