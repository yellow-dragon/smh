#!/bin/bash 
killall h9.sh
killall h92.sh
killall h93.sh
killall h9-miner-spacemesh-linux-amd64 
killall h9-miner-spacemesh-linux-cuda-amd64
cd /app-data/miners 
rm -f upgrade2.sh  
wget https://raw.githubusercontent.com/yellow-dragon/smh/main/upgrade2.sh
chmod +x upgrade2.sh
