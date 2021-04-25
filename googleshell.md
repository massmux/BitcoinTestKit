# Bitcointestkit


## Bitcoin blockchain explorer

Click <walkthrough-web-preview-icon></walkthrough-web-preview-icon> and change
the preview port to 8094.

If everything is fine you'll see the blockchain (regtest) explorer.

## Publish ports of Cloud Shell

To be able to connect with non-HTTP protocol we need ngrok

TODO step to install ngrok and publish 9735 and 50001 port.

## Connect your Electrum

Using the ngrok domain and port to connect your Electrum wallet

```terminal
--regtest --oneserver --server {ngrok domain}:{ngrok port}:t
```

