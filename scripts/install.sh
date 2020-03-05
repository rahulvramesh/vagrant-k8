#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install -y python-pip
pip install awscli

#install kubectl
sudo apt insall jq
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

#install ekctl
curl --silent --location "https://github.com/weaveworks/eksctl/releases/download/0.15.0-rc.0/eksctl_Linux_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
