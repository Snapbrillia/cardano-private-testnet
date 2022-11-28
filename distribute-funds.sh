cardano-cli transaction build                               \
    --babbage-era                                           \
    --testnet-magic 1                                       \
    --protocol-params-file protocol.json                    \
    --out-file tx.draft                                     \
    --tx-in #transactionID#Index_utxo                         \
    --tx-out #reciever-address+amount                     \
    --change-address $(cat private-testnet/addresses/user1.addr)                      \

cardano-cli transaction sign \
--tx-body-file tx.draft \
--signing-key-file $(cat testnet-wallet-01/payment.skey) \
--testnet-magic 1097911063 \
--out-file tx.signed

cardano-cli transaction submit \
--testnet-magic 1097911063 \
--tx-file tx.signed
