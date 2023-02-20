#!/usr/bin/env bash

sudo apt update && sudo apt install -y freerdp2-x11 python3 python3-pip python3-libvirt && \
pip3 install PyQt5 && \
echo "PATH=\$PATH:$HOME/.local/bin" >> $HOME/.profile

echo "Type the following in terminal to configure cassowary: python3 -m cassowary -a"
echo "Please follow this guide: https://github.com/casualsnek/cassowary/blob/main/docs/2-cassowary-install.md#on-linux-host"
