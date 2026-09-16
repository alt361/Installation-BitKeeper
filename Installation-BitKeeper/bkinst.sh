#!/bin/bash

apt update -y && apt upgrade -y

wget https://www.bitkeeper.org/downloads/debian/support@bitkeeper.com.gpg.key -O /etc/apt/keyrings/bk.asc
chmod -R 777 /etc/apt/keyrings/

tee /etc/apt/sources.list.d/bitkeeper.sources << EOF
Types: deb
URIs: https://www.bitkeeper.org/downloads/latest/bk-7.3.3.src.tar.gz
Suites: resolute/
Signed-by: /etc/apt/keyrings/bk.asc
#InRelease-Path: https://www.bitkeeper.org/downloads/debian/jessie/dists/jessie/InRelease
#Release-Path: https://www.bitkeeper.org/downloads/debian/jessie/dists/jessie/Release
EOF

apt update -y && apt upgrade -y
apt install bk
