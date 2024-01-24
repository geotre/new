#!/bin/bash

curl https://nim-lang.org/choosenim/init.sh -sSf -o init.sh
chmod +x init.sh
./init.sh -y
rm init.sh
export PATH=/home/vscode/.nimble/bin:$PATH
echo 'export PATH=/home/vscode/.nimble/bin:$PATH' >> ~/.bashrc

if ls "*.nimble" 1> /dev/null 2>&1; then
  nimble install -y
fi
