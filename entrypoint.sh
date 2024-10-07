#!/bin/sh

if [ ! -f /data/ipfs/config ]; then
  echo "Initializing IPFS..."
  ipfs init

  echo "Confiuring CORS IPFS..."
  ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '["*"]'
  ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '["PUT", "POST"]'

  echo "Configuring Auto Relay IPFS..."
  ipfs config --json Swarm.EnableRelayHop false
  ipfs config --json Swarm.EnableAutoRelay true

  echo "Configuring Gateway Prevent Fetch From Another Node..."
  ipfs config --bool Gateway.NoFetch true

  echo "Configuring GC Period IPFS to 1 week..."
  ipfs config Datastore.GCPeriod 168h

  echo "Configuring GC Storage Max 10GB or 90%..."
  ipfs config Datastore.StorageGCWatermark 90
  ipfs config Datastore.StorageMax 10GB

  echo "Configuring Global IP Address.."
  ipfs config Addresses.API /ip4/0.0.0.0/tcp/5001
  ipfs config Addresses.Gateway /ip4/0.0.0.0/tcp/8080
fi

echo "Starting IPFS daemon with enable Garbage Collection and auto migration..."
ipfs daemon --enable-gc --migrate=true
