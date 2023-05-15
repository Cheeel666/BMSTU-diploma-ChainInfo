 geth --datadir node2  --keystore node2/keystore --networkid 1020290  \
       --allow-insecure-unlock --unlock '0x8F0F41F2883966a1fFB54150c46Ee1e123c4AA2C' --password "1992" \
        --ws --ws.api 'eth,miner,personal,net,web3,clique' --ws.origins "*" --port 8565 --http --http.port 8003 --mine \
        --miner.etherbase "0x8F0F41F2883966a1fFB54150c46Ee1e123c4AA2C" --http.api=admin,eth,miner,personal,net,web3,clique \
        --ws.port 8563 --authrpc.port 8564 --syncmode 'snap' \
        --bootnodes 'enode://c81ba6b7e9fb225ddb2be0ae50494b018e5e27f5c52dbabc80579c760dc005aba13f16697987da51bf9f7ef7a17d2ddfa73252ccbaf18053552b2f5f3ab1cbe5@127.0.0.1:8545'

