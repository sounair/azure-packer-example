#!/bin/sh
apt update
apt install git
apt install wget
wget https://dl.google.com/go/go1.16.4.linux-amd64.tar.gz
sudo tar -xvf go1.16.4.linux-amd64.tar.gz
sudo mv go /usr/local 
export GOROOT=/usr/local/go
export GOPATH=$HOME/Projects/Proj1 
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH 
sudo cd ~/Projects/Proj1
git clone "https://github.com/skanayi/golang-hello-world.git"
cd golang-hello-world/
git checkout 1.0.3
go build
./ -port 81
