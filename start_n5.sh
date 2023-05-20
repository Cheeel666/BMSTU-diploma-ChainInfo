 geth --datadir node5  --keystore node5/keystore --networkid 1020290  \
       --allow-insecure-unlock --unlock '0x7727ed01E865D9E584E671078d960F6c1ff59B63' --password node5/password.txt \
        --ws --ws.api 'eth,miner,personal,net,web3,clique' --ws.origins "*" --port 8855 --http --http.port 8005 --mine \
        --miner.etherbase "0x7727ed01E865D9E584E671078d960F6c1ff59B63" --http.api=admin,eth,miner,personal,net,web3,clique \
        --ws.port 8853 --authrpc.port 8854 --syncmode 'full' \
        --bootnodes 'enode://b4f89073281e9c2d61839e7cb9c6ca0b0f389f1dd15108b41c3c5567ebc39bc059e7cfbf8e7590f4cb75caba59b2cc1e84c740dd2298e48777b05b47120e4475@127.0.0.1:0?discport=8000'

