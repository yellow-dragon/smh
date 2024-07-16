#!/bin/bash
killall h9.sh
killall h92.sh
killall h93.sh
killall h9-miner-spacemesh-linux-amd64 
killall h9-miner-spacemesh-linux-cuda-amd64
cd /app-data/miners 
#rm -f H9-Miner-spacemesh-v4.0.0-5-linux.zip && rm -rf linux
#wget https://github.com/h9-dev/spacemesh-miner/releases/download/v4.0.0/H9-Miner-spacemesh-v4.0.0-5-linux.zip 
#unzip H9-Miner-spacemesh-v4.0.0-5-linux.zip 
rm -f killh9.sh 
wget https://raw.githubusercontent.com/yellow-dragon/smh/main/killh9.sh 
chmod +x killh9.sh 
rm -f h9.sh 
wget https://raw.githubusercontent.com/yellow-dragon/smh/main/h9.sh 
chmod +x h9.sh
rm -f h9c.sh 
wget https://raw.githubusercontent.com/yellow-dragon/smh/main/h9c.sh 
chmod +x h9c.sh
cd /app-data/miners/linux
rm -f config.yaml
wget https://raw.githubusercontent.com/yellow-dragon/smh/main/config.yaml


