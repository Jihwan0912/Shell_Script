#!/bin/bash

# 입력된 이름을 기준으로 파일 생성
base_name=$1

if [ -z "$base_name" ]; then
    echo "사용법: $0 [이름]"
    exit 1
fi

# 기본 폴더 생성
mkdir -p "$base_name"

# 파일 생성
for i in {0..4}; do
    file_name="file${i}.txt"
    touch "$base_name/$file_name"
done

# 하위 폴더 생성 및 파일 링크
cd "$base_name" || exit
for file in *.txt; do
    folder_name="${file%.txt}"
    mkdir -p "$folder_name"
    ln -s "../$file" "$folder_name/$file"
done

echo "작업이 완료되었습니다!"
exit 0
