#!/bin/bash

echo "Stopping containers"
docker-compose stop

sudo rm -Rf hansel/regtest
sudo rm -Rf gretel/regtest
sudo rm -Rf bitcoinjs-regtest-server/bitcoin-data/regtest
sudo rm -Rf explorer/bitcoin
sudo rm -Rf explorer/logs
sudo rm -Rf explorer/electrs_bitcoin_db
sudo rm -Rf lightningd/lightning/regtest
sudo rm -Rf lightningd/lightning/bitcoin
sudo rm -Rf lightningd/lightning/lightningd-*.pid
sudo rm -Rf lnd/lnd-data/data
sudo rm -Rf lnd/lnd-data/letsencrypt
sudo rm -Rf lnd/lnd-data/logs
sudo rm -Rf lnd/lnd-data/tls*

echo "=====> Files cleaned. Run docker-compose up to start the system again <====="

