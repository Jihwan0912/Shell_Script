#!/bin/bash
function_ls () {
	echo "함수 안으로 들어 왔음"
	ls "$@"
	return
}
echo "프로그램을 시작합니다."
function_ls "$@"
echo "프로그램을 종료합니다."
exit 0
