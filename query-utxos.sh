read -p "Enter wallet address to check utxos:" WALLETADDRESS

export CARDANO_NODE_SOCKET_PATH=private-testnet/node-spo1/node.sock

cardano-cli query utxo \
--testnet-magic 42 \
--address $WALLETADDRESS

