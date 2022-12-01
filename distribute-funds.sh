export CARDANO_NODE_SOCKET_PATH=private-testnet/node-bft1/node.sock

cardano-cli transaction build                               \
    --babbage-era                                           \
    --testnet-magic 42                                       \
    --protocol-params-file protocol.json                    \
    --out-file tx.draft                                     \
    --tx-in 3291cd3fbce8cd4e9cdff136c0c730a99d40f0d6d063938a15cd4a3e1c75c557#0                         \
    --tx-out addr_test1vq4g25afgelvnn2hetyjxr4judqsjgehcqpm8adqkfylq7ssc40kv+1000000000  \
    --change-address $(cat private-testnet/addresses/user1.addr)                      \

cardano-cli transaction sign \
--tx-body-file tx.draft \
--signing-key-file $(cat private-testnet/addresses/user1.skey) \
--testnet-magic 42 \
--out-file tx.signed

cardano-cli transaction submit \
--testnet-magic 42 \
--tx-file tx.signed
