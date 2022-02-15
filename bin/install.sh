#!/bin/sh
mv /tmp/golang.service /etc/systemd/system/golang.service
# creating directory including the parent one
mkdir -p /projects/proj1
cd /projects/proj1 
mv /tmp/golang-hello-world  /projects/proj1
# if needed line numer 16 to 20 cam be re written as below
# git clone -b 1.0.3 "https://github.com/skanayi/golang-hello-world.git" /projects/proj1 && cd /projects/proj1 && go build

