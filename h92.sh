#!/bin/bash

# Đường dẫn tới phần mềm
MINER_PATH="/app-data/miners/linux"
MINER_NAME="h9-miner-spacemesh-linux-amd64"
COMMAND="screen ./$MINER_NAME -gpuServer -license yes"
cd $MINER_PATH && $COMMAND
