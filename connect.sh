#!/bin/bash
if [ $# == 2 ]; then
    usr=$1
    pw=$2
elif [ $# == 1 ]; then
    usr=$1
    read -s -p  "Input your password: " pw
    echo -e "\n"
else
    read -p "Input your username: " usr
    read -s -p  "Input your password: " pw
    echo -e "\n"
fi

if command -v curl >/dev/null 2>&1; then
    curl --silent "http://10.3.8.211/login" -d "user=$usr&pass=$pw"
    ret_code=`curl -I -s baidu.com --connect-timeout 0.5 -w %{http_code}`
    if [ $ret_code == "200" ]; then
        echo "Internet Connected."
    else
        echo "No Internet Connection."
    fi
else
    wget --quiet "http://10.3.8.211/login/" --post-data="user=$usr&pass=$pw" -O /dev/null
    if wget baidu.com --server-response -O /dev/null 2>&1 | grep 10.3.8 >/dev/null 2>&1; then
        echo "No Internet Connection."
    else
        echo "Internet Connected."
    fi
fi
