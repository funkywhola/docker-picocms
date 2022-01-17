#!/bin/bash
mkdir data
wget https://github.com/picocms/Pico/releases/download/v2.1.4/pico-release-v2.1.4.tar.gz
tar -zxvf pico-release-v2.1.4.tar.gz -C data/
docker-compose up -d