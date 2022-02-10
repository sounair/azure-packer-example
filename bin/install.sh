#!/bin/sh
# always remember to use slient mode swtiches. apt-get without -y will prompt for confirmation otherwise
apt-get update -y
apt-get install -y git wget nginx
# downloading go to build the code
wget https://dl.google.com/go/go1.16.4.linux-amd64.tar.gz
tar -xvf go1.16.4.linux-amd64.tar.gz
mv go /usr/local
mv /tmp/golang.service /etc/systemd/system/golang.service
# create a shortcut to go binary so that the binary is available under system path
ln -s /usr/local/go/bin/go /usr/local/bin/go
# creating directory including the parent one
mkdir -p /projects/proj1
export GOROOT=/usr/local/go
export GOPATH=/usr/local 
cd /projects/proj1 
git clone "https://github.com/skanayi/golang-hello-world.git"
cd golang-hello-world/
git checkout 1.0.3
go build
# if needed line numer 16 to 20 cam be re written as below
# git clone -b 1.0.3 "https://github.com/skanayi/golang-hello-world.git" /projects/proj1 && cd /projects/proj1 && go build

