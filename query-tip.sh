#!/bin/bash
export CARDANO_NODE_SOCKET_PATH=private-testnet/node-spo1/node.sock
cardano-cli query tip --testnet-magic 42

