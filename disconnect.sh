if command -v curl >/dev/null 2>&1; then
    curl --silent "http://10.3.8.211/logout" >/dev/null 2>&1
else
    wget --quiet "http://10.3.8.211/logout" -O /dev/null
fi
