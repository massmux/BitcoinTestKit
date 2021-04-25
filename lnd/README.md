# LND implementation of lightninig network node https://github.com/lightningnetwork/lnd.

in the following steps lnd, lightningd are the names of docker containers.


1. docker exec -ti lnd bash
2. lncli -n regtest walletbalance
3. lncli -n regtest newaddress p2wkh
4. (from hansel or gretel) bitcoin-cli generatetoaddress 101 {address 3.}
5. (from host browser) open http://localhost:9737/#/node and just copy the pubkey
6. lncli -n regtest connect {pubkey 5.}@lightningd:9735
7. lncli -n regtest openchannel {pubkey 5.} 100000
8. (from host browser) open http://localhost:9737/#/channels 
9. (from hansel or gretel) bitcoin-cli generatetoaddress 6 $(bitcoin-cli getnewaddress)
10. (from host browser) open http://localhost:9737/#/channels in order to see the channel in status open

In order to connect electrum to the LND node

1. docker exec -ti lnd bash
2. lncli -n regtest getinfo | jq '.identity_pubkey'
3. in electrum from "Channels" tab click on "Open Channel"
4. as "Remote node ID" put {pubkey 2.}@127.0.0.1:19735

