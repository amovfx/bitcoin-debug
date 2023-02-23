#!/bin/bash

#create wallet
bitcoin-cli -chain=regtest createwallet "testwallet"
#generate 101 blocks
bitcoin-cli -chain=regtest generatetoaddress 103 $(bitcoin-cli -chain=regtest getnewaddress)
#
alias bc="bitcoin-cli -chain=regtest"
utxo_txid=`bitcoin-cli -chain=regtest listunspent | jq -r '.[-1].txid'`
echo $utxo_txid
utxo_vout=0
to=`bitcoin-cli -chain=regtest getnewaddress`
echo $to
amount=-0.002

inputs='''[{"txid":"'$utxo_txid'","vout":'$utxo_vout'}]'''
echo $inputs
outputs='''[{"'$to'":-0.002}]'''
echo $outputs
raw=`bitcoin-cli -chain=regtest createrawtransaction $inputs $outputs`
echo $raw
# bitcoin-cli -chain=regtest decoderawtransaction $raw
# echo $rawtxhex
# bitcoin-cli -chain=regtest decoderawtransaction $rawtxhex


#todo: create gosu entrypoint
#todo: docker compose launch bitcoind and bitcoin-cli commands
#todo: cleaning scripts for wallet
