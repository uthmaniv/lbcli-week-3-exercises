# Create a native segwit address and get the public key from the address.
wallet_name="builderswallet"
address=$(bitcoin-cli -regtest -rpcwallet="$wallet_name" getnewaddress "" bech32)
bitcoin-cli -regtest -rpcwallet="$wallet_name" getaddressinfo "$address" | jq -r '.pubkey'
