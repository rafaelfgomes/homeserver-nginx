#!/bin/bash

if [ $# -eq 0 ]; then
  echo "É preciso passar 1 parâmetro, exemplo: $0 arg1"
  exit 1
fi

openssl dhparam -out $(pwd)/nginx/dhparam/dhparam-$1-2048.pem 2048