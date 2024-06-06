#!/bin/bash

# Đường dẫn tới phần mềm
MINER_PATH="/app-data/miners/linux"
MINER_NAME="h9-miner-spacemesh-linux-amd64"
COMMAND="screen ./$MINER_NAME -gpuServer -license yes"

# Kiểm tra và chạy phần mềm
while true; do
    if ! pgrep -f $MINER_NAME > /dev/null; then
        echo "$(date): $MINER_NAME không chạy, khởi động lại..."
        cd $MINER_PATH && $COMMAND
    else
        echo "$(date): $MINER_NAME đang chạy."
    fi
    sleep 300 # Lặp lại mỗi 5 phút (300 giây)
done
