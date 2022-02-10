#!/bin/sh
apt-get update -y
apt-get install -y git wget nginx
wget https://dl.google.com/go/go1.16.4.linux-amd64.tar.gz
tar -xvf go1.16.4.linux-amd64.tar.gz
mv go /usr/local
mv /tmp/golang.service /etc/systemd/system/golang.service
ln -s /usr/local/go/bin/go /usr/local/bin/go
mkdir -p /projects/proj1
export GOROOT=/usr/local/go
export GOPATH=/usr/local 
cd /projects/proj1 
git clone "https://github.com/skanayi/golang-hello-world.git"
cd golang-hello-world/
git checkout 1.0.3
go build

