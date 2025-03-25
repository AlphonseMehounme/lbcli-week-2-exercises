# Created a SegWit address.
address=$(bitcoin-cli -regtest getnewaddress "" "bech32")
# Add funds to the address.
bitcoin-cli -regtest generatetoaddress 10 $address 
# Return only the Address
echo $address
