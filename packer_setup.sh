curl -fsSL https://apt.releases.hashicorp.com/gpg |apt-key add -
apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
apt-get update -y && apt-get install packer -y