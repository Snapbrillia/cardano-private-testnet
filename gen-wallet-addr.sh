#! /usr/bin/bash

read -p "Enter your wallet name: " NAME

# Creates private-public keypairs.
cardano-cli address key-gen \
--verification-key-file addresses/$NAME.vkey \
--signing-key-file addresses/$NAME.skey

# Creates a wallet address. 
cardano-cli address build \
--payment-verification-key-file addresses/$NAME.vkey \
--out-file addresses/$NAME.addr \
--testnet-magic 42

# Generate pkh for plutus scripts
cardano-cli address key-hash --payment-verification-key-file  addresses/$NAME.vkey \
--out-file addresses/$NAME.pkh \

echo "$NAME wallet address sucessfully created!"