 geth --datadir node2  --keystore node2/keystore --networkid 5777575  \
       --allow-insecure-unlock --unlock '0xDd27585FD191A406B950c8D3c223B9590ae5f7DB' --password node2/password.txt \
        --ws --ws.api 'eth,miner,personal,net,web3,clique' --ws.origins "*" --port 8555 --http --http.port 8002 --mine \
        --miner.etherbase "0xDd27585FD191A406B950c8D3c223B9590ae5f7DB" --http.api=admin,eth,miner,personal,net,web3,clique \
        --ws.port 8553 --authrpc.port 8554 --syncmode 'snap' \
        --bootnodes 'enode://b4f89073281e9c2d61839e7cb9c6ca0b0f389f1dd15108b41c3c5567ebc39bc059e7cfbf8e7590f4cb75caba59b2cc1e84c740dd2298e48777b05b47120e4475@127.0.0.1:0?discport=8000'

