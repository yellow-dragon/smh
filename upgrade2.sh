#!/bin/bash
cd /app-data/miners 
rm -f H9-Miner-spacemesh-v4.0.0-2-linux.zip && rm -rf linux
wget https://github.com/h9-dev/spacemesh-miner/releases/download/v4.0.0/H9-Miner-spacemesh-v4.0.0-2-linux.zip 
unzip H9-Miner-spacemesh-v4.0.0-2-linux.zip 
rm -f killh9.sh 
wget https://raw.githubusercontent.com/yellow-dragon/smh/main/killh9.sh 
chmod +x killh9.sh 
rm -f h9.sh 
wget https://raw.githubusercontent.com/yellow-dragon/smh/main/h9.sh 
chmod +x h9.sh


