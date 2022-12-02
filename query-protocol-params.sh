export CARDANO_NODE_SOCKET_PATH=private-testnet/node-spo1/node.sock

cardano-cli query protocol-parameters \
    --testnet-magic 42                 \
    --out-file protocol.json