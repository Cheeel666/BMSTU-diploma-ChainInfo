# ChainData: setup private PoA blockchain


## Introduction
The aim is to setup a private Proof of Authority blockchain with prefunded accounts.  The password of any account is 1992. 
<!-- TABLE OF CONTENTS -->


## Content
You will have to install geth first.

There are two nodes and a bootnode. To init blockchain run scripts: 
``` 
geth --datadir node1 init genesis.json
geth --datadir node2 init genesis.json
```

This will init nodes with our genesis file.

## Start nodes and a bootnode

To start everything with zsh run in different terminals:
```
bootnode -nodekey boot.key -verbosity 9  -addr :8000

geth --datadir node1  --keystore node1/keystore --networkid 5777575  \
      --allow-insecure-unlock --unlock '0xfeE894cA44744ac1142eDc0c95cc7377A46E2338' --password node1/password.txt \
       --ws --ws.api 'eth,miner,personal,net,web3,clique' --ws.origins "*" --port 8545 --http --http.port 8001 --mine \
       --miner.etherbase "0xfeE894cA44744ac1142eDc0c95cc7377A46E2338" --http.api=admin,eth,miner,personal,net,web3,clique \
       --syncmode 'snap' --ws.port 8540 \
       --bootnodes 'enode://b4f89073281e9c2d61839e7cb9c6ca0b0f389f1dd15108b41c3c5567ebc39bc059e7cfbf8e7590f4cb75caba59b2cc1e84c740dd2298e48777b05b47120e4475@127.0.0.1:0?discport=8000,enode://b4f89073281e9c2d61839e7cb9c6ca0b0f389f1dd15108b41c3c5567ebc39bc059e7cfbf8e7590f4cb75caba59b2cc1e84c740dd2298e48777b05b47120e4475@127.0.0.1:0?discport=8000'

 geth --datadir node2  --keystore node2/keystore --networkid 5777575  \
       --allow-insecure-unlock --unlock '0xDd27585FD191A406B950c8D3c223B9590ae5f7DB' --password node2/password.txt \
        --ws --ws.api 'eth,miner,personal,net,web3,clique' --ws.origins "*" --port 8555 --http --http.port 8002 --mine \
        --miner.etherbase "0xDd27585FD191A406B950c8D3c223B9590ae5f7DB" --http.api=admin,eth,miner,personal,net,web3,clique \
        --ws.port 8553 --authrpc.port 8554 --syncmode 'snap' \
        --bootnodes 'enode://b4f89073281e9c2d61839e7cb9c6ca0b0f389f1dd15108b41c3c5567ebc39bc059e7cfbf8e7590f4cb75caba59b2cc1e84c740dd2298e48777b05b47120e4475@127.0.0.1:0?discport=8000'
```
### Get private keys of prefunded accounts
Private keys are neccesary to import accounts to metamask

Replace "path" in get_priv_key.py and run python script for each account. Path should be set like so:
```
accounts/acc1/keystore/UTC--2023-05-08T21-36-56.419455000Z--590c6dc62cb2095f9e2e598ff73ea9831c440168
```


### Connect metamask
Requires running blockchain. Go to metamask extension for browser, create account, login and add network. Set URL to http://127.0.0.1:8001 and chainID to 5777575. 


### Troubles
If it pops up on second node - "unauthorized signer", type following in *geth attach http://localhost:8001*
clique.propose("0xDd27585FD191A406B950c8D3c223B9590ae5f7DB", true)