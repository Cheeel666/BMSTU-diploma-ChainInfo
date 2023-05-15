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
zsh start_boot.sh

zsh start_n1.sh

zsh start_n2.sh
```
### Get private keys of prefunded accounts
Private keys are neccesary to import accounts to metamask

Replace "path" in get_priv_key.py and run python script for each account. Path should be set like so:
```
accounts/acc1/keystore/UTC--2023-05-08T21-36-56.419455000Z--590c6dc62cb2095f9e2e598ff73ea9831c440168
```


### Connect metamask
Requires running blockchain. Go to metamask extension for browser, create account, login and add network. Set URL to http://127.0.0.1:8001 and chainID to 1020290. 


### Troubles
If it pops up on second node - "unauthorized signer", type following in *geth attach http://localhost:8001*
clique.propose("0xDd27585FD191A406B950c8D3c223B9590ae5f7DB", true)