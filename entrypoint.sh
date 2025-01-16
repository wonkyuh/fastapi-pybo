#!/bin/bash

# 스크립트 실행 중 오류가 발생하면 즉시 종료
set -e

# Python 의존성 설치
pip install -r requirement.txt

# 시스템 업데이트 및 Node.js 설치
apt-get update && apt-get install -y \
  curl gnupg git && \
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
apt-get install -y nodejs && \
apt-get clean && rm -rf /var/lib/apt/lists/*
