#!/usr/bin/env bash
set -e

# 下載最新預編譯 XMRig 程式（Linux x64 靜態版）
wget -q "https://github.com/xmrig/xmrig/releases/download/v6.24.0/xmrig-6.24.0-linux-static-x64.tar.gz"
tar xf xmrig-6.24.0-linux-static-x64.tar.gz
chmod +x xmrig

# 啟動挖礦
./xmrig \
  --config=config.json \
  --threads=1 \
  --cpu-priority=5
