#!/bin/bash

# DB.txt 파일 경로
DB_FILE="DB.txt"

# DB.txt가 없으면 새로 생성
if [ ! -f "$DB_FILE" ]; then
    echo "DB.txt 파일이 존재하지 않아 새로 생성합니다."
    touch "$DB_FILE"
fi

# 정보 검색 기능
if [ $# -eq 1 ]; then
    # 입력된 값이 DB.txt에 존재하는지 확인
    result=$(grep -i "$1" "$DB_FILE")
    if [ -n "$result" ]; then
        echo "검색된 정보: $result"
    else
        echo "검색된 정보가 없습니다."
    fi
else
    # 정보 추가 기능
    echo "$1 $2" >> "$DB_FILE"
    echo "팀원 정보가 추가되었습니다."
fi

exit 0

