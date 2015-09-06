#!/bin/bash
for i in $(seq -f "%02g" 1 26); do
  wget -O chapter"$i".zip http://media.wiley.com/product_ancillary/50/11188580/DOWNLOAD/c"$i"_code.zip
  if [[ $? == 0 ]]; then
    mkdir chapter"$i"
    unzip -d chapter"$i" chapter"$i".zip
  fi
  rm chapter"$i".zip
done
wget http://media.wiley.com/product_ancillary/50/11188580/DOWNLOAD/README.txt
