#!/usr/bin/env bash

# Check CPU architecture
ARCH=$(uname -m)
ARIAC=1.37.0
echo -e "${INFO} Check CPU architecture ..."
if [[ ${ARCH} == "x86_64" ]]; then
    ARCH="aria2-x86_64-linux-musl_static.zip"
elif [[ ${ARCH} == "aarch64" ]]; then
    ARCH="aria2-aarch64-linux-musl_static.zip"
elif [[ ${ARCH} == "armv7l" ]]; then
    ARCH="aria2-arm-linux-musleabi_static.zip"
else
    echo -e "${ERROR} This architecture is not supported."
    exit 1
fi

# Download files
echo "Downloading binary file: ${ARCH}"
#curl -L "https://github.com/SKIYET/aria2-static-build/releases/download/continuous/${ARCH}"
wget https://github.com/SKIYET/aria2-static-build/releases/download/continuous/${ARCH}
unzip ${ARCH}
mv aria2c /usr/local/bin
echo "Download binary file: ${ARCH} completed"
