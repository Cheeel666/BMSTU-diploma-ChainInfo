 geth --datadir node3  --keystore node3/keystore --networkid 1020290  \
       --allow-insecure-unlock --unlock '0x9fcb3cA180a7baC3dE408Bb70B16FAC3C5fd41F2' --password node3/password.txt \
        --ws --ws.api 'eth,miner,personal,net,web3,clique' --ws.origins "*" --port 8655 --http --http.port 8003 --mine \
        --miner.etherbase "0x9fcb3cA180a7baC3dE408Bb70B16FAC3C5fd41F2" --http.api=admin,eth,miner,personal,net,web3,clique \
        --ws.port 8653 --authrpc.port 8654 --syncmode 'full' \
        --bootnodes 'enode://b4f89073281e9c2d61839e7cb9c6ca0b0f389f1dd15108b41c3c5567ebc39bc059e7cfbf8e7590f4cb75caba59b2cc1e84c740dd2298e48777b05b47120e4475@127.0.0.1:0?discport=8000'

