#!/bin/bash

# Đường dẫn đến thư mục chứa phần mềm
cd /app-data/miners/linux

# Tên của tiến trình
PROCESS_NAME="h9-miner-spacemesh-linux-cuda-amd64"

# Hàm kiểm tra và khởi động lại phần mềm nếu không chạy
check_and_run() {
  # Kiểm tra nếu tiến trình đang chạy
  if ! ps aux | grep "$PROCESS_NAME" | grep -v grep > /dev/null
  then
    echo "$PROCESS_NAME không chạy, khởi động lại..."
    screen -S H9 -dm bash -c "./h9-miner-spacemesh-linux-cuda-amd64 -gpuServer -license yes"
  else
    echo "$PROCESS_NAME đang chạy."
  fi
}

# Vòng lặp kiểm tra và khởi động lại mỗi 5 phút
while true
do
  check_and_run
  sleep 5 # Chờ 5 phút (300 giây)
done
