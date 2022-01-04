#!/bin/bash
mkdir data
tar -zxvf pico-release-v2.1.4.tar.gz -C data/
docker-compose up -d