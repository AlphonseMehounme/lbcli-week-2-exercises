# Created a SegWit address.
address=$(bitcoin-cli -regtest -rpcwallet="btrustwallet" getnewaddress "" "bech32")
# Add funds to the address.
blocks=$(bitcoin-cli -regtest -rpcwallet="btrustwallet" generatetoaddress 101 "$address")
# Return only the Address
echo $address
