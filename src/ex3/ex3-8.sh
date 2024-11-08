#!/bin/bash

# DB.txt 파일이 존재하지 않으면 새로 생성
DB_FILE="DB.txt"

# DB.txt가 없으면 새로 생성하고 기록
if [ ! -f "$DB_FILE" ]; then
    echo "DB.txt 파일이 존재하지 않아 새로 생성합니다."
    touch "$DB_FILE"
fi

# 정보 추가
echo "$1 $2" >> "$DB_FILE"
exit 0

