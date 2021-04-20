# Bitcoin Test Kit

This is a bitcoin regtest environment tuned for security and privacy tests. Original version by Aglietti and Barnini as precisely mentioned below. I had the honor of forking forking their original project

## Prerequisites install

This install has been tested on Ubuntu 20.04 running on a standard VPS. The distro needs docker fully running. This is the link for [ubuntu](https://docs.docker.com/engine/install/ubuntu/). A small recap of installing docker is here below:

```
sudo apt-get update
sudo apt-get install git curl wget
sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release
```

Download the GPG key from the APT docker repo

```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
```

Add APT repository that matches your CPU architecture

```
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

Install docker & docker-compose

```
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io
apt-get install docker-compose
```

## Playground install

First of all clone the repository

```
git clone https://github.com/bitcoin-dalla-teoria-alla-pratica/bitcoin-in-action-playground.git
```

Siamo pronti ora per lanciare i containers:

```
cd /root/bitcoin-in-action-playground/bitcoin-core
docker-compose up
```

## Log into the "hansel" node

To log into the bash of the hansel node, do as follows


```
root@playground:~# docker exec -ti hansel bash
root@hansel:/opt/nodeworkdir# 
```

## Mine the first block

The whole regtest is empty, there are no blocks. So the first step is create a new block by mining it. 

```
bitcoin-cli generatetoaddress 1 $(bitcoin-cli getnewaddress)
```

## Run on Google Cloud Shell

[![Open this project in Cloud
Shell](http://gstatic.com/cloudssh/images/open-btn.png)](https://console.cloud.google.com/cloudshell/open?git_repo=https://github.com/bitcoin-dalla-teoria-alla-pratica/bitcoin-in-action-playground.git&tutorial=gcp-shell-tutorial.md&shellonly=true)

## Original version

This playground has been created originally by authors of books (in italian) "[Bitcoin dalla teoria alla pratica](https://www.amazon.com/Bitcoin-Dalla-teoria-pratica-Italian/dp/B07SNNNL2P)" / "[Bitcoin in Action](https://www.amazon.com/gp/product/B08NL5ZV6X)" and channel [Bitcoin in Action](https://www.youtube.com/BitcoinInAction). Therefore many many thanks to Aglietti & Barnini



