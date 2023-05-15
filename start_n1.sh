geth --datadir node1  --keystore node1/keystore --networkid 1020290  \
      --allow-insecure-unlock --unlock '0xfeE894cA44744ac1142eDc0c95cc7377A46E2338' --password node1/password.txt \
       --ws --ws.api 'eth,miner,personal,net,web3,clique' --ws.origins "*" --port 8545 --http --http.port 8001 --mine \
       --miner.etherbase "0xfeE894cA44744ac1142eDc0c95cc7377A46E2338" --http.api=admin,eth,miner,personal,net,web3,clique \
       --syncmode 'full' --ws.port 8540 \
       --bootnodes 'enode://b4f89073281e9c2d61839e7cb9c6ca0b0f389f1dd15108b41c3c5567ebc39bc059e7cfbf8e7590f4cb75caba59b2cc1e84c740dd2298e48777b05b47120e4475@127.0.0.1:0?discport=8000'




# -rpc --rpcapi 'eth,miner,personal,net,web3,clique'
#--datadir node1/  \
#  -rpc --rpc.api 'personal,eth,net,web3,txpool,miner' \
#  --rpc.corsdomain "*" --networkid 5777575 \
#  --mine --miner.etherbase="0xfeE894cA44744ac1142eDc0c95cc7377A46E2338"  --allow-insecure-unlock